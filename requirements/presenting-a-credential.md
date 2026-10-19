---
title: Presenting a Credential
capability: |
  The wallet should be able to present a credential to a Verifier upon receiving a request from the Verifier.

  Key considerations while sharing a presentation:

  * The wallet should trust the verifier before sharing the credentials
  * The wallet should authenticate the holder before sharing the credentials
  * The wallet should collect the consent of the holder before sharing the presentation
  * The wallet should generate a fresh presentation for every request and every presentation should be bound to the transaction and the verifier.
cardinality: ALL
requirements:
  - id: '11' # 1.2.0: §6.5, bullet 1
    status: PUBLISHED
    level: REQUIRED
    type:
    observability:
    mutability:
    statement: The wallet MUST provide mechanisms that enable a credential verifier to establish trust in the wallet before the verifier requests a verifiable presentation.
    documentation:
    api_operation_id:
    test:
  - id: '12' # 1.2.0: §6.5, bullet 2
    status: PUBLISHED
    level: REQUIRED
    type:
    observability:
    mutability:
    statement: The wallet MUST be able to receive and process a credential verifier’s request for a verifiable presentation.
    documentation:
    api_operation_id:
    test:
  - id: '13' # 1.2.0: §6.5, bullet 3
    status: PUBLISHED
    level: REQUIRED
    type:
    observability:
    mutability:
    statement: The credential wallet MUST be able to validate the verifier before presenting a credential.
    documentation:
    api_operation_id:
    test:
  - id: '14' # 1.2.0: §6.5, bullet 4
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: The credential wallet SHOULD capture the holder's consent before the credentials are presented to any verifier.
    documentation:
    api_operation_id:
    test:
  - id: '15' # 1.2.0: §6.5, bullet 5
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: The credential issuer SHOULD NOT be involved in the presentation process.
    documentation:
    api_operation_id:
    test:
  - id: '16' # 1.2.0: §6.5, bullet 6
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: The credential wallet (with the holder's consent) SHOULD be able to present a selected subset of the data fields (claims) from a credential while other fields are not revealed to the verifier.
    documentation:
    api_operation_id:
    test:
  - id: '17' # 1.2.0: §6.5, bullet 7
    status: PUBLISHED
    level: REQUIRED
    type:
    observability:
    mutability:
    statement: The wallet MUST be able to present a verifiable presentation to the credential verifier in response to a valid request.
    documentation:
    api_operation_id:
    test:
  - id: '18' # 1.2.0: §6.5, bullet 8
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: The credential verifier SHOULD be able to verify the presentations after receiving the presentation.
    documentation:
    api_operation_id:
    test:
  - id: '19' # 1.2.0: §6.5, bullet 9
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: The credential wallet SHOULD enable the holder to present a pseudonym instead of their real identity when authenticating online or presenting credentials, except in cases where identification is mandatory.
    documentation:
    api_operation_id:
    test:
  - id: '20' # 1.2.0: §6.5, bullet 10
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: The credential verifier SHOULD NOT be able to link two presentations to the same holder (unless the holder's information is provided as part of the presentation).
    documentation:
    api_operation_id:
    test:
  - id: '21' # 1.2.0: §6.5, bullet 11
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: Two credential verifiers SHOULD NOT be able to link two presentation transactions to the same holder by sharing the received presentations.
    documentation:
    api_operation_id:
    test:
  - id: '22' # 1.2.0: §6.5, bullet 12
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: After receiving a presentation the credential verifier SHOULD NOT be able to prove to any third party that the holder had presented the credentials to the verifier for identification purposes earlier.
    documentation: >
      This requirement can be fulfilled only if the presentation is not signed but secured using the HMAC (Hash-based Message Authentication Code).
    api_operation_id:
    test:
  - id: '23' # 1.2.0: §6.5, bullet 13
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: The credential wallet backend SHOULD NOT be able to track where the credentials are being presented or learn details about the attributes of any transactions performed by the Holder.
    documentation:
    api_operation_id:
    test:
  - id: '24' # 1.2.0: §6.5, bullet 14
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: The credential verifier SHOULD NOT be able to prove to any third party the credential's authenticity and the integrity of its attributes that the verifier had previously verified.
    documentation: >
      This requirement would require using ECDH/HMAC to cryptographically protect the credential, as this process involves a public key provided by the Verifier. This requires an active, trusted component to create the credential on demand,
    api_operation_id:
    test:
  - id: '25' # 1.2.0: §6.5, bullet 15
    status: PUBLISHED
    level: RECOMMENDED
    type:
    observability:
    mutability:
    statement: The credential issuer and the credential verifier should not be able to link an issuance and presentation session to the same holder (unless the Holder provides sufficiently identifying information as part of their authentication to the Issuer and as part of the presented credential shared with the verifier).
    documentation:
    api_operation_id:
    test:
---

# Workflows

# Data structure
