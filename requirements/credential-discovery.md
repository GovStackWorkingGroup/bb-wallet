---
title: Credential Discovery
capability: |
  A wallet holder who intends to receive credentials from an issuer should be able to get relevant information on how to obtain the credentials, so that the process of credential issuance is convenient and secure.
cardinality: ALL
requirements:
  - id: '1' # 1.2.0: §6.1, bullet 1
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: The credential wallet should host the credential offering endpoint that the credential issuer should call to share the credential offer.
    documentation:
    api_operation_id:
    test:
---

# Workflows

# Data structure
