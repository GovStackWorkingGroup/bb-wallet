---
title: Holder Authentication
description: |
  The wallet knows that the person using it is the holder before it does anything with their credentials.
realises: [secure-custody, holder-control]
requirements:
  - id: ''  # 1.2.0: §4.5
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST authenticate the holder before presenting a credential.
    documentation:
    api_operation_id:
    test:
  - id: ''  # 1.2.0: §4.6.1, §4.6.4
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST authenticate the holder before removing a credential or exporting credentials to another device.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF QES_03 (pattern)
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: DEVICE
    statement: The wallet MUST use the device's secure authentication, a PIN or biometrics checked by the secure environment, to authenticate the holder.
    documentation:
    api_operation_id:
    test:
---

Holder authentication (holder to wallet) and holder binding (credential to holder, checked by the verifier) are different things. Holder binding is in the `verifiable-credentials` conformance profile.

# Workflows

# Data structure
