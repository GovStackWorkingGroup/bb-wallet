---
title: Removing a Credential
description: |
  The holder can remove any credential from the wallet at any time.
realises: [holder-control]
requirements:
  - id: ''  # 1.2.0: §4.6.4; ARF PAD_01
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST let the holder remove any credential at any time.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF PAD_03. Conflicts with the OpenID4VCI notification endpoint: open question 4 of the proposal
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: CONSUMED_API
    statement: The wallet MUST NOT notify the issuer when the holder removes a credential.
    documentation:
    api_operation_id:
    test:
---

The functional use case [Credential Removal](../../../resources/use-cases/functional-use-cases.md#2-credential-removal) applies. Destroying the keys and batch copies of a removed verifiable credential is in Verifiable Credential Lifecycle.

# Workflows

# Data structure
