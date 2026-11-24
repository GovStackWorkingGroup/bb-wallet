---
title: Identifying Expired Credentials
description: |
  The holder knows which credentials are past their validity period, and is warned before a credential expires. Expiry is checked from the credential's own dates, so it applies to every type.
realises: [credential-currency]
requirements:
  - id: '10'  # 1.2.0: §6.4, bullet 1. Deprecated: split into the expiry requirement below, the revocation requirement in Identifying Revoked Credentials, and the status-list check in Verifiable Credential Lifecycle
    status: DEPRECATED
    level: RECOMMENDED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet SHOULD verify the validity of the credential when accessed and show the status to the holder to take appropriate action.
    documentation:
    api_operation_id:
    test:
  - id: ''  # replaces 10 (part); 1.2.0: §4.6.3
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST show the holder which credentials have expired.
    documentation:
    api_operation_id:
    test:
  - id: ''  # 1.2.0: §4.4
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST warn the holder before presenting an expired credential.
    documentation:
    api_operation_id:
    test:
  - id: ''  # 1.2.0: §4.6.3 ("promptly notify")
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST notify the holder before a credential expires.
    documentation:
    api_operation_id:
    test:
---

# Workflows

# Data structure
