---
title: Updating Credentials
description: |
  When the issuer changes a credential, for example with new data or a new validity period, the holder gets the new version without starting over.
realises: [credential-currency]
requirements:
  - id: ''  # scope: Future Scope "re-issuance". Roadmap
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST replace a stored credential with its new version only after the holder approves the update.
    documentation:
    api_operation_id:
    test:
  - id: ''  # PKPASS web service. Roadmap
    status: DRAFT
    level: RECOMMENDED
    applies_when: [pass]
    mutability:
    interaction: CONSUMED_API
    statement: The wallet MUST fetch the new version of a pass when the pass's update service announces one.
    documentation:
    api_operation_id:
    test:
---

How updates arrive depends on the credential type: the pass's update service for passes, and reissuance for verifiable credentials (Verifiable Credential Lifecycle).

# Workflows

# Data structure
