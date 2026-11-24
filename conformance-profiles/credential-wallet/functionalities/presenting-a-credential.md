---
title: Presenting a Credential
description: |
  The holder presents a credential only at their direction and with their consent, in at least one way, and can present every type of credential they hold. Showing a code and sending a file are met in the core; presenting against a verifier's request is met by claiming the remote-presentation or proximity-presentation conformance profile.
realises: [credential-presentation, holder-control]
requirements:
  - id: ''  # 1.2.0: §4.5, ch9 9.2
    status: DRAFT
    level: REQUIRED
    mutability: EXTENSIBLE
    statement: The wallet MUST present credentials in at least one of the ways in the options below.
    documentation:
    select:
      min: 1
    options:  # no interaction or test of its own: verified by counting the options that pass
      - id: ''  # source list
        key: code
        status: DRAFT
        level: OPTION
        interaction: USER_INTERFACE
        statement: The wallet displays a credential as the signed QR code or barcode it was issued with, for a verifier to scan.
        documentation:
        test:
      - id: ''  # source list ("Sharing"). Roadmap; open question 10 of the proposal
        key: file
        status: DRAFT
        level: OPTION
        interaction: FILE
        statement: The wallet sends a credential file to a verifier through the device's share function.
        documentation:
        test:
      - id: ''  # ch9 9.2
        status: DRAFT
        level: OPTION
        extension: remote-presentation  # met by claiming the extension: no interaction or test of its own
        statement: The wallet presents verifiable credentials to an online verifier over OpenID4VP, as the Remote Presentation conformance profile specifies.
        documentation:
      - id: ''  # source list ("RFID")
        status: DRAFT
        level: OPTION
        extension: proximity-presentation  # met by claiming the extension: no interaction or test of its own
        statement: The wallet presents mdoc credentials in person, as the Proximity Presentation conformance profile specifies.
        documentation:
  - id: ''  # new; checked against presented_by on the options of Credential Acquisition
    status: DRAFT
    level: REQUIRED
    mutability: IMMUTABLE
    interaction: USER_INTERFACE
    statement: The wallet MUST present every credential type it acquires through at least one of the presentation options it meets.
    documentation:
    api_operation_id:
    test:
  - id: '14'  # 1.2.0: §6.5, bullet 4. Level conflicts with ch5 5.1.4 (REQUIRED)
    status: PUBLISHED
    level: RECOMMENDED
    mutability:
    interaction: USER_INTERFACE
    statement: The credential wallet SHOULD capture the holder's consent before the credentials are presented to any verifier.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF RPA_06 (agnostic part)
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST show the holder which credential, and which claims of it, will be presented before presenting it.
    documentation:
    api_operation_id:
    test:
  - id: '15'  # 1.2.0: §6.5, bullet 5. Deprecated: the issuer is the subject; replaced by the next requirement
    status: DEPRECATED
    level: RECOMMENDED
    mutability:
    interaction: CONSUMED_API
    statement: The credential issuer SHOULD NOT be involved in the presentation process.
    documentation:
    api_operation_id:
    test:
  - id: ''  # replaces 15; holds for every presentation method
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: CONSUMED_API
    statement: The wallet MUST NOT contact the issuer while it presents a credential.
    documentation:
    api_operation_id:
    test:
  - id: '23'  # 1.2.0: §6.5, bullet 13. Deprecated: the backend is the subject; replaced by the next requirement
    status: DEPRECATED
    level: RECOMMENDED
    mutability:
    interaction: CONSUMED_API
    statement: The credential wallet backend SHOULD NOT be able to track where the credentials are being presented or learn details about the attributes of any transactions performed by the Holder.
    documentation:
    api_operation_id:
    test:
  - id: ''  # replaces 23; ch5 5.1.1 b2
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: CONSUMED_API
    statement: The wallet MUST NOT send the wallet provider information about which verifiers it presents to or which claims it presents.
    documentation:
    api_operation_id:
    test:
  - id: ''  # W3C VC Barcodes; EU DCC; open question 10 of the proposal
    status: DRAFT
    level: REQUIRED
    applies_when_all: [vc, code]
    mutability: EXTENSIBLE
    interaction: USER_INTERFACE
    statement: The wallet MUST display a verifiable credential as a code only from a signed code representation supplied by its issuer.
    documentation:
    api_operation_id:
    test:
  - id: ''  # new
    status: DRAFT
    level: RECOMMENDED
    applies_when: [code]
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST tell the holder that anyone who scans or copies a code can present it again.
    documentation:
    api_operation_id:
    test:
  - id: ''  # new
    status: DRAFT
    level: RECOMMENDED
    applies_when: [code]
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST show a code only while the holder keeps the presentation open, and hide it afterwards.
    documentation:
    api_operation_id:
    test:
---

A code shown on screen gives bearer-level guarantees, whatever the credential type: there is no request, no verifier check, and no binding to a transaction. A QR code printed on paper is a credential carrier: the same presentation without a wallet (WALLET-TDR-2026-10-3).

A wallet cannot re-encode a verifiable credential as a code and keep it verifiable, because the issuer's signature covers the bytes the issuer signed. A verifiable credential is shown as a code only when its issuer issued that representation.

What every request-based presentation needs (verifier checks, nonce binding, selective disclosure) is in the `verifiable-credentials` conformance profile, in Answering a Verifier's Request and Privacy-preserving Presentation.

# Workflows

* Showing a code, and the verifier scanning it.
* Sharing a credential file.

# Data structure
