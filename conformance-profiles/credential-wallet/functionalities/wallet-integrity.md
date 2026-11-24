---
title: Wallet Integrity
description: |
  The wallet can show that it is a genuine instance of its wallet solution, and stops working with credentials when its provider revokes it.
realises: [secure-custody]
requirements:
  - id: ''  # ARF Topic 38. Roadmap
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST stop adding and presenting credentials when its wallet instance has been revoked by the wallet provider.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF WIAM_03, WIAM_04, WIAM_07. Roadmap
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: INTERNAL
    statement: The wallet MUST verify, on first start, that it is a genuine instance of the wallet solution before any credential is added.
    documentation:
    api_operation_id:
    test:
---

How a wallet proves its integrity to issuers and verifiers is defined in the `verifiable-credentials` conformance profile (Verifiable Credential Acquisition, Answering a Verifier's Request).

# Workflows

# Data structure
