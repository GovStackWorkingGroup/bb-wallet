---
title: Credential Acquisition
description: |
  The holder can add credentials of at least one credential type to the wallet. Each type is an option, with a key that the requirements specific to it carry. Whatever the type, the wallet checks the credential and asks the holder before keeping it.
realises: [credential-collection]
requirements:
  - id: ''  # source list ("oneOf or at least 2"), scope. min 1 is open question 1 of the proposal
    status: DRAFT
    level: REQUIRED
    mutability: EXTENSIBLE
    statement: The wallet MUST add credentials of at least one of the credential types in the options below.
    documentation:
    select:
      min: 1
    options:  # no interaction or test of its own: verified by counting the options that pass
      - id: ''  # source list
        key: bearer
        status: DRAFT
        level: OPTION
        interaction: FILE
        presented_by: [code, file]  # options of the presentation variation point that can carry this type
        statement: The wallet adds a bearer credential from a scanned QR code or barcode, or from an imported file.
        documentation:
        test:
      - id: ''  # source list; open question 6 of the proposal
        key: pass
        status: DRAFT
        level: OPTION
        interaction: FILE
        presented_by: [code, file]  # options of the presentation variation point that can carry this type
        statement: The wallet adds a pass from a PKPASS file or from a link to one.
        documentation:
        test:
      - id: ''  # ch9 9.1
        key: vc
        status: DRAFT
        level: OPTION
        extension: verifiable-credentials  # met by claiming the extension: no interaction or test of its own
        presented_by: [code, remote-presentation, proximity-presentation]  # options of the presentation variation point that can carry this type
        statement: The wallet obtains verifiable credentials from issuers as the Verifiable Credentials conformance profile specifies.
        documentation:
  - id: ''  # WALLET-TDR-2026-10-3; what makes a product a wallet rather than a key store
    status: DRAFT
    level: REQUIRED
    mutability: IMMUTABLE
    interaction: FILE
    statement: The wallet MUST store and present credentials signed by an issuer other than the holder.
    documentation:
    api_operation_id:
    test:
  - id: '6'  # 1.2.0: §6.2, bullet 5. Deprecated: replaced by the next requirement, for every credential type
    status: DEPRECATED
    level: REQUIRED
    mutability:
    interaction: FILE
    statement: The credential wallet MUST be able to validate the credential before storing the credentials.
    documentation:
    api_operation_id:
    test:
  - id: ''  # replaces 6; ch5 5.2.3 b2
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: FILE
    statement: The wallet MUST verify the integrity and the issuer signature of a credential before storing it.
    documentation:
    api_operation_id:
    test:
  - id: ''  # new
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST show the holder the issuer and the content of a credential and obtain the holder's approval before storing it.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ch5 5.2.3 b2. Depends on trust lists: open question 5 of the proposal
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: FILE
    statement: The wallet MUST check that the issuer of a credential is trusted before storing the credential.
    documentation:
    api_operation_id:
    test:
  - id: ''  # PKPASS format
    status: DRAFT
    level: REQUIRED
    applies_when: [pass]
    mutability: EXTENSIBLE
    interaction: FILE
    statement: The wallet MUST verify the signature and the manifest hashes of a pass before storing it.
    documentation:
    api_operation_id:
    test:
  - id: ''  # new
    status: DRAFT
    level: RECOMMENDED
    applies_when: [bearer]
    mutability: EXTENSIBLE
    interaction: USER_INTERFACE
    statement: The wallet MUST tell the holder, when adding a bearer credential, that anyone with a copy of it can present it.
    documentation:
    api_operation_id:
    test:
---

Each credential type is defined by its option above. Requirements specific to one type carry its key in `applies_when` and sit in the functionality they belong to: the pass checks here, pass updates in Updating Credentials, voided passes in Identifying Revoked Credentials, and copying in Portability. Verifiable credentials are acquired as the `verifiable-credentials` conformance profile specifies.

`presented_by` on each option lists the presentation options that can carry the type. Presenting a Credential requires every type a wallet acquires to be presentable through an option it meets.

# Workflows

* Adding a bearer credential from a scanned code or an imported file.
* Adding a pass from a file or a link.

The OpenID4VCI workflows are in Verifiable Credential Acquisition.

# Data structure
