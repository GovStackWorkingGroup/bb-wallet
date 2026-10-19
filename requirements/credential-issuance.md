---
title: Credential Issuance
capability: |
  An Issuer should be able to issue digitally verifiable credentials to a trusted Wallet.

  Key considerations during credential issuance:

  * The Issuer should trust the wallet before sharing the credentials
  * The Issuer should verify the holder's identity and presented details before issuing credentials
  * The wallet should validate the issuer's details before requesting the credentials
  * The wallet should validate the received credentials before storing the credentials
cardinality: ALL
requirements:
  - id: '2' # 1.2.0: §6.2, bullet 1
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: The credential issuer SHOULD be able to validate the wallet before issuing the credentials.
    documentation:
    api_operation_id:
    test:
  - id: '3' # 1.2.0: §6.2, bullet 2
    status: PUBLISHED
    level: REQUIRED
    type:
    observability:
    mutability:
    statement: The Wallet MUST only proceed to request/accept issuance after successful holder authentication as required by the issuer.
    documentation: >
      The issuer determines the method of authentication. Issuance processes can be performed both online and in person, with varying authentication methods for each.
    api_operation_id:
    test:
  - id: '4' # 1.2.0: §6.2, bullet 3
    status: PUBLISHED
    level: REQUIRED
    type:
    observability:
    mutability:
    statement: The credential wallet MUST be able to trust the credential issuer before requesting the credentials.
    documentation:
    api_operation_id:
    test:
  - id: '5' # 1.2.0: §6.2, bullet 4
    status: PUBLISHED
    level: REQUIRED
    type:
    observability:
    mutability:
    statement: The credential wallet MUST be able to request credentials from a trusted credential issuer.
    documentation:
    api_operation_id:
    test:
  - id: '6' # 1.2.0: §6.2, bullet 5
    status: PUBLISHED
    level: REQUIRED
    type:
    observability:
    mutability:
    statement: The credential wallet MUST be able to validate the credential before storing the credentials.
    documentation:
    api_operation_id:
    test:
  - id: '7' # 1.2.0: §6.2, bullet 6
    status: PUBLISHED
    level: REQUIRED
    type:
    observability:
    mutability:
    statement: The credential wallet MUST enable cryptographic mechanisms to store the credentials.
    documentation:
    api_operation_id:
    test:
  - id: '8' # 1.2.0: §6.2, bullet 7
    status: PUBLISHED
    level: REQUIRED
    type:
    observability:
    mutability:
    statement: The credential wallet MUST have trusted hardware providing a secure environment (tamper-proof) and storage for cryptographic assets such as keys.
    documentation: >
      As most Android devices don't have trusted hardware, a trusted execution environment (TEE) can be used to store cryptographic assets such as keys.
    api_operation_id:
    test:
---

# Workflows

# Data structure
