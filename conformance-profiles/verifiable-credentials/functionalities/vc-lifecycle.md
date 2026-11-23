---
title: Verifiable Credential Lifecycle
description: |
  What verifiable credentials add to the core lifecycle functionalities: status checks, batch copies and updates, removal and portability.
realises: [credential-currency, holder-control]
requirements:
  - id: '9'  # 1.2.0: §6.3, bullet 1. Deprecated: the issuer is the subject; replaced by the status-list requirement below
    status: DEPRECATED
    level: RECOMMENDED
    mutability:
    interaction: CONSUMED_API
    statement: The credential issuer SHOULD NOT be able to learn details of the presentation when there is a status check of the credentials by a verifier.
    documentation:
    api_operation_id:
    test:
  - id: ''  # replaces 10 (part); 1.2.0: §4.6.3
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: CONSUMED_API
    statement: The wallet MUST check the status of a verifiable credential that references a status list.
    documentation:
    api_operation_id:
    test:
  - id: ''  # replaces 9; ch5 5.1.1 b1
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: CONSUMED_API
    statement: The wallet MUST check credential status by fetching the whole status list, so that the issuer does not learn which credential is checked.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF Topic 10. Roadmap
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST request a new batch of copies when the stored copies of a batch-issued credential are used up.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF PAD_04
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: INTERNAL
    statement: The wallet MUST destroy the private keys bound to a credential when it removes the credential.
    documentation: >
      Evidence: architecture documentation of key deletion in the secure environment.
    api_operation_id:
    test:
  - id: ''  # ARF PAD_02
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST remove every copy of a batch-issued credential when the holder removes it.
    documentation:
    api_operation_id:
    test:
  - id: ''  # 1.2.0: §4.6.1; ARF Mig_01, Mig_03, Mig_04
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: FILE
    statement: The wallet MUST let the holder export, to a location of their choice, the data needed to obtain each of their verifiable credentials again on another device.
    documentation:
    api_operation_id:
    test:
  - id: ''  # 1.2.0: §4.6.1
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST bind verifiable credentials moved to a new device to keys generated on that device.
    documentation:
    api_operation_id:
    test:
---

1.2 asks the wallet to "port credentials" and to "cryptographically bind the credentials to the holder in the new device". With id 8 and Holder Binding (keys cannot leave the secure environment), a device-bound credential cannot be copied. The data needed to request the credential again is moved instead, and the credential is reissued on the new device (ARF `Mig_03`).

# Workflows

# Data structure
