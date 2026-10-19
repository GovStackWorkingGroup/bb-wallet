---
title: Credential Status Management
capability: |
  The status of a credential is dynamic and is governed by the issuer or the owner of the credential.

  * The Issuer should be able to change the status of the credentials to revoked or suspended
  * The Issuer should provide a privacy-preserving way to check the status so that the Verifier can check if the credential is suspended or revoked
cardinality: ALL
requirements:
  - id: '9' # 1.2.0: §6.3, bullet 1
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: The credential issuer SHOULD NOT be able to learn details of the presentation when there is a status check of the credentials by a verifier.
    documentation:
    api_operation_id:
    test:
---

To gain a clearer understanding of credential status management, consider the following use cases:

* [Suspension and Reactivation of Credentials](../spec/use-cases/functional-use-cases.md#id-5.1.-suspension-and-reactivation)
* [Revocation of Credentials](../spec/use-cases/functional-use-cases.md#id-5.2.-revocation)

# Workflows

# Data structure
