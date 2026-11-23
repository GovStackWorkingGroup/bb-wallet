---
title: Portability
description: |
  The holder can move their credentials to another device and keep using them.
realises: [holder-control]
requirements:
  - id: ''  # ARF Mig_05
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: FILE
    statement: The wallet MUST protect exported data so that only the holder can use it.
    documentation:
    api_operation_id:
    test:
  - id: ''  # Future Scope "Backup and Restore/Recovery". Roadmap
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: FILE
    statement: The wallet MUST let the holder back up and restore their credentials and transaction log.
    documentation:
    api_operation_id:
    test:
  - id: ''  # follows from the credential types
    status: DRAFT
    level: RECOMMENDED
    applies_when: [bearer, pass]
    mutability:
    interaction: FILE
    statement: The wallet MUST let the holder copy bearer credentials and passes to another device.
    documentation:
    api_operation_id:
    test:
---

How each credential type moves depends on the type. Bearer credentials and passes are copied. Verifiable credentials are reissued on the new device (Verifiable Credential Lifecycle), because their keys cannot leave the secure environment of the old one.

A reference use case for portability can be accessed [here](../../../resources/use-cases/functional-use-cases.md#3-porting-credentials).

# Workflows

# Data structure
