---
title: Verifiable Credential Acquisition
description: |
  The holder can obtain verifiable credentials from an issuer, and find out how to obtain them, so that issuance is convenient and secure. Meets option vc of Credential Acquisition.
realises: [credential-collection]
requirements:
  - id: ''  # ch9 9.1.1, 9.1.2 (implicit in 1.2)
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST obtain verifiable credentials from an issuer over OpenID4VCI, using the authorization code flow and the pre-authorized code flow.
    documentation:
    api_operation_id:
    test:
  - id: ''  # scope, ch7 7.1. min 1 is open question 2 of the proposal
    status: DRAFT
    level: REQUIRED
    mutability: EXTENSIBLE
    statement: The wallet MUST accept verifiable credentials in at least one of the formats in the options below.
    documentation:
    select:
      min: 1
    options:  # no interaction or test of its own: verified by counting the options that pass
      - id: ''  # ch7 7.1.1
        key: w3c-vcdm
        status: DRAFT
        level: OPTION
        interaction: FILE
        statement: The wallet accepts verifiable credentials in the W3C Verifiable Credentials Data Model.
        documentation:
        test:
      - id: ''  # ch7 7.1.2
        key: sd-jwt-vc
        status: DRAFT
        level: OPTION
        interaction: FILE
        statement: The wallet accepts verifiable credentials in the SD-JWT VC format.
        documentation:
        test:
      - id: ''  # ch7 7.1.3
        key: mdoc
        status: DRAFT
        level: OPTION
        interaction: FILE
        statement: The wallet accepts credentials in the ISO/IEC 18013-5 mdoc format.
        documentation:
        test:
  - id: '1'  # 1.2.0: §6.1, bullet 1. Proposed rewording: "The wallet MUST accept credential offers by value and by reference."
    status: PUBLISHED
    level: RECOMMENDED
    mutability:
    interaction: SERVICE_API
    statement: The credential wallet should host the credential offering endpoint that the credential issuer should call to share the credential offer.
    documentation:
    api_operation_id:
    test:
  - id: '2'  # 1.2.0: §6.2, bullet 1. Deprecated: the issuer is the subject; replaced by the wallet attestation requirement below
    status: DEPRECATED
    level: RECOMMENDED
    mutability:
    interaction: PROTOCOL
    statement: The credential issuer SHOULD be able to validate the wallet before issuing the credentials.
    documentation:
    api_operation_id:
    test:
  - id: '3'  # 1.2.0: §6.2, bullet 2
    status: PUBLISHED
    level: REQUIRED
    mutability:
    interaction: PROTOCOL
    statement: The Wallet MUST only proceed to request/accept issuance after successful holder authentication as required by the issuer.
    documentation: >
      The issuer determines the method of authentication. Issuance processes can be performed both online and in person, with varying authentication methods for each.
    api_operation_id:
    test:
  - id: '4'  # 1.2.0: §6.2, bullet 3
    status: PUBLISHED
    level: REQUIRED
    mutability:
    interaction: PROTOCOL
    statement: The credential wallet MUST be able to trust the credential issuer before requesting the credentials.
    documentation:
    api_operation_id:
    test:
  - id: '5'  # 1.2.0: §6.2, bullet 4. Overlaps 4
    status: PUBLISHED
    level: REQUIRED
    mutability:
    interaction: PROTOCOL
    statement: The credential wallet MUST be able to request credentials from a trusted credential issuer.
    documentation:
    api_operation_id:
    test:
  - id: ''  # replaces 2; OpenID4VCI wallet attestation; ARF WUA_05, WUA_05a
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST provide an issuer, on request, with an attestation of the wallet instance and of the secure environment that holds its keys.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ch8 8.2.4; ARF PAD_02
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST request a batch of credential copies when the issuer offers batch issuance.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ch8 8.2.5
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST support deferred issuance through the issuer's deferred credential endpoint.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ch8 8.2.6; open question 4 of the proposal
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST tell the issuer, through its notification endpoint, whether a credential was accepted.
    documentation:
    api_operation_id:
    test:
---

Discovery is part of this workflow: "The format of Credential Discovery" is out of scope, and the only discovery requirement (id 1) is a wallet endpoint of OpenID4VCI.

# Workflows

Chapter 9.1.1 and 9.1.2 of 1.2.

# Data structure

Chapter 7.1 and 7.3.1–7.3.2 of 1.2. API: chapter 8 of 1.2 and `resources/api/`.
