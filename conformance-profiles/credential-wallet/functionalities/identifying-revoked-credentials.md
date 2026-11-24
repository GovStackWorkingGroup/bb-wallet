---
title: Identifying Revoked Credentials
description: |
  The holder knows which credentials the issuer has revoked or suspended. How status is checked depends on the type: the voided field for passes, and status lists for verifiable credentials.
realises: [credential-currency]
requirements:
  - id: ''  # replaces 10 (part); 1.2.0: §4.6.3
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST show the holder which credentials are revoked or suspended, for every credential whose type defines a status mechanism.
    documentation:
    api_operation_id:
    test:
  - id: ''  # new
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST warn the holder before presenting a revoked or suspended credential.
    documentation:
    api_operation_id:
    test:
  - id: ''  # PKPASS format
    status: DRAFT
    level: REQUIRED
    applies_when: [pass]
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST show the holder which passes have been voided.
    documentation:
    api_operation_id:
    test:
---

Issuers change the status of the credentials they issue, to revoked or suspended. That is issuer behaviour, described here as context. The status-list check for verifiable credentials is in Verifiable Credential Lifecycle.

To gain a clearer understanding of credential status management, consider the following use cases:

* [Suspension and Reactivation of Credentials](../../../resources/use-cases/functional-use-cases.md#51-suspension-and-reactivation)
* [Revocation of Credentials](../../../resources/use-cases/functional-use-cases.md#52-revocation)

# Workflows

# Data structure
