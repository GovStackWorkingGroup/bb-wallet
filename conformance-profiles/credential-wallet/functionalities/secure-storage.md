---
title: Secure Storage
description: |
  Credentials and the keys that protect them are stored so that they cannot be read, copied or changed by anyone other than the holder through the wallet.
realises: [secure-custody]
requirements:
  - id: '7'  # 1.2.0: §6.2, bullet 6. Overlaps the encryption-at-rest requirement below, which is the stronger statement
    status: PUBLISHED
    level: REQUIRED
    mutability:
    interaction: INTERNAL
    statement: The credential wallet MUST enable cryptographic mechanisms to store the credentials.
    documentation:
    api_operation_id:
    test:
  - id: '8'  # 1.2.0: §6.2, bullet 7. DEVICE when a test checks key attestation; INTERNAL when the device offers none (ARCH-ADR-8)
    status: PUBLISHED
    level: REQUIRED
    mutability:
    interaction: DEVICE
    statement: The credential wallet MUST have trusted hardware providing a secure environment (tamper-proof) and storage for cryptographic assets such as keys.
    documentation: >
      As most Android devices don't have trusted hardware, a trusted execution environment (TEE) can be used to store cryptographic assets such as keys.
    api_operation_id:
    test:
  - id: ''  # ch5 5.2.2 b1, widened to all types
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: INTERNAL
    statement: The wallet MUST encrypt every stored credential at rest, whatever its type.
    documentation: >
      Evidence: architecture documentation of the storage layer and the encryption it applies.
    api_operation_id:
    test:
  - id: ''  # ch5 5.2.2 b2
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: INTERNAL
    statement: The wallet MUST store the keys used for encrypting credential data in the secure environment.
    documentation: >
      Evidence: architecture documentation showing where the keys are generated and kept.
    api_operation_id:
    test:
---

The requirement on holder-binding keys (ch5 5.2.2 b3) is in the `verifiable-credentials` conformance profile, in Holder Binding.

# Workflows

# Data structure
