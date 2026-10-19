@routing
Feature: Ingest and route wallet input
  # The single instrument that resolves "a QR (or link, or file) can be many things".
  # It proves the wallet DECODES the carrier, CLASSIFIES the payload + format, and
  # DISPATCHES to the correct flow — or rejects with the correct class.
  # Carriers, schemes and symbologies in the Examples are illustrative and configurable.

  Background:
    Given a wallet whose capability set includes:
      | supported                                                              |
      | CWT, SD-JWT VC, W3C VC-DM 2.0, ISO mdoc                                 |
      | OID4VCI, OID4VP, ISO 18013-5 device engagement                         |
      | PassKit, esPass, IATA BCBP                                              |

  @issuance @presentation @pass @bearer
  Scenario Outline: Decode, classify and dispatch a payload
    Given the wallet receives <carrier> carrying <payload>
    When the wallet decodes and classifies the input
    Then it identifies the payload as "<classified_as>" in format "<format>"
    And it dispatches to the "<flow>" handler

    Examples: Self-contained (bearer) credentials — the payload IS the credential
      | carrier            | payload                          | classified_as        | format          | flow                  |
      | a QR (camera)      | a signed CWT                     | bearer credential    | CWT             | add-bearer-credential |
      | a QR (camera)      | an SD-JWT VC                     | bearer credential    | SD-JWT VC       | add-bearer-credential |
      | a QR (camera)      | a CBOR-LD VC-DM credential       | bearer credential    | W3C VC-DM 2.0   | add-bearer-credential |
      | a file .pdf        | an embedded credential QR        | bearer credential    | CWT             | add-bearer-credential |
      | manual paste       | an SD-JWT VC string             | bearer credential    | SD-JWT VC       | add-bearer-credential |

    Examples: Issuance — the payload is an INVITATION, not the credential
      | carrier                              | payload                       | classified_as       | format  | flow                   |
      | a QR (camera)                        | an OID4VCI credential offer   | credential offer    | OID4VCI | issue-issuer-initiated |
      | a deep link openid-credential-offer  | an OID4VCI offer by value     | credential offer    | OID4VCI | issue-issuer-initiated |
      | a universal link https              | an offer by reference (uri)   | credential offer    | OID4VCI | issue-issuer-initiated |

    Examples: Presentation — the payload is a REQUEST or an ENGAGEMENT
      | carrier                         | payload                        | classified_as         | format           | flow           |
      | a QR (camera)                   | an OID4VP presentation request | presentation request  | OID4VP           | present-oid4vp |
      | a deep link openid4vp           | an OID4VP request              | presentation request  | OID4VP           | present-oid4vp |
      | the Digital Credentials API     | an OID4VP request              | presentation request  | OID4VP           | present-oid4vp |
      | a QR (camera)                   | an mdoc device engagement      | device engagement     | ISO 18013-5      | present-mdoc   |
      | an NFC tap                      | an mdoc device engagement      | device engagement     | ISO 18013-5      | present-mdoc   |

    Examples: Passes — a container the wallet renders; barcode payload is opaque
      | carrier          | payload                    | classified_as | format  | flow     |
      | a file .pkpass   | an Apple pass definition   | pass          | PassKit | add-pass |
      | a file .espass   | an esPass definition       | pass          | esPass  | add-pass |
      | a 2D barcode PDF417 | an IATA BCBP record     | pass data     | BCBP    | add-pass |
      | a 2D barcode Aztec  | an IATA BCBP record     | pass data     | BCBP    | add-pass |

  @error
  Scenario: A carrier wrapping another payload is re-ingested, not mishandled
    # e.g. a PDF or an https link whose real content is an offer or a bearer credential
    Given the wallet receives a file .pdf carrying an embedded QR
    When the wallet decodes and classifies the input
    Then it extracts the inner payload
    And it re-runs classification on the extracted payload
    And it dispatches based on the inner payload, not the outer carrier

  @error @unsupported
  Scenario Outline: Recognised but unsupported format is rejected gracefully
    Given a wallet whose capability set does NOT include "<format>"
    And the wallet receives <carrier> carrying a valid "<format>" payload
    When the wallet decodes and classifies the input
    Then it recognises the payload as "<format>"
    And it declines with an "unsupported format" outcome naming "<format>"
    And the wallet state is unchanged

    Examples:
      | carrier       | format        |
      | a QR (camera) | CWT           |
      | a QR (camera) | SD-JWT VC     |
      | a QR (camera) | ISO mdoc      |
      | a file .espass| esPass        |

  @error
  Scenario: Unrecognised input is rejected gracefully
    Given the wallet receives a QR (camera) carrying arbitrary non-credential data
    When the wallet decodes and classifies the input
    Then it declines with an "unrecognised input" outcome
    And the wallet state is unchanged