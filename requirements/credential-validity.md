---
title: Credential Validity
capability: |
  The wallet and the verifier should be able to verify the validity of the credentials. Validity of credentials means, that

  * The credential signature is verified
  * The credential has not expired or revoked
  * A trusted issuer issued the credential
cardinality: ALL
requirements:
  - id: '10' # 1.2.0: §6.4, bullet 1
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: The wallet SHOULD verify the validity of the credential when accessed and show the status to the holder to take appropriate action.
    documentation:
    api_operation_id:
    test:
---

# Workflows

# Data structure
