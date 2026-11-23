---
title: Privacy-preserving Presentation
description: |
  The holder shares only what a transaction needs, and cannot be tracked across presentations by verifiers or issuers. Applies when the wallet also claims remote-presentation or proximity-presentation.
realises: [privacy]
requirements:
  - id: '16'  # 1.2.0: §6.5, bullet 6. Level conflicts with ch5 5.1.3 (REQUIRED)
    status: PUBLISHED
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The credential wallet (with the holder's consent) SHOULD be able to present a selected subset of the data fields (claims) from a credential while other fields are not revealed to the verifier.
    documentation:
    api_operation_id:
    test:
  - id: '19'  # 1.2.0: §6.5, bullet 9. Level conflicts with ch5 5.1.3 (REQUIRED)
    status: PUBLISHED
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The credential wallet SHOULD enable the holder to present a pseudonym instead of their real identity when authenticating online or presenting credentials, except in cases where identification is mandatory.
    documentation:
    api_operation_id:
    test:
  - id: '20'  # 1.2.0: §6.5, bullet 10. Deprecated: the verifier is the subject; replaced by the batch-copy requirement below
    status: DEPRECATED
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The credential verifier SHOULD NOT be able to link two presentations to the same holder (unless the holder's information is provided as part of the presentation).
    documentation:
    api_operation_id:
    test:
  - id: '21'  # 1.2.0: §6.5, bullet 11. Deprecated: replaced by the batch-copy requirement below
    status: DEPRECATED
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: Two credential verifiers SHOULD NOT be able to link two presentation transactions to the same holder by sharing the received presentations.
    documentation:
    api_operation_id:
    test:
  - id: '22'  # 1.2.0: §6.5, bullet 12. Deprecated: merged into the mdoc MAC requirement below
    status: DEPRECATED
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: After receiving a presentation the credential verifier SHOULD NOT be able to prove to any third party that the holder had presented the credentials to the verifier for identification purposes earlier.
    documentation: >
      This requirement can be fulfilled only if the presentation is not signed but secured using the HMAC (Hash-based Message Authentication Code).
    api_operation_id:
    test:
  - id: '24'  # 1.2.0: §6.5, bullet 14. Deprecated: merged into the mdoc MAC requirement below
    status: DEPRECATED
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The credential verifier SHOULD NOT be able to prove to any third party the credential's authenticity and the integrity of its attributes that the verifier had previously verified.
    documentation: >
      This requirement would require using ECDH/HMAC to cryptographically protect the credential, as this process involves a public key provided by the Verifier. This requires an active, trusted component to create the credential on demand,
    api_operation_id:
    test:
  - id: '25'  # 1.2.0: §6.5, bullet 15. Deprecated: replaced by the batch-copy requirement below
    status: DEPRECATED
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The credential issuer and the credential verifier should not be able to link an issuance and presentation session to the same holder (unless the Holder provides sufficiently identifying information as part of their authentication to the Issuer and as part of the presented credential shared with the verifier).
    documentation:
    api_operation_id:
    test:
  - id: ''  # replaces 20, 21, 25; ch5 5.1.2 b1, b3, b5
    status: DRAFT
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST use a different copy of a batch-issued credential for each presentation.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ch5 5.1.2 intro ("timestamps or version numbers")
    status: DRAFT
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST NOT add to a presentation any identifier that is not part of the disclosed claims.
    documentation:
    api_operation_id:
    test:
  - id: ''  # replaces 22, 24; applies exactly where it can be met
    status: DRAFT
    level: RECOMMENDED
    applies_when: [mdoc]
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST authenticate mdoc presentations with a MAC, so that the verifier cannot prove the presentation to a third party.
    documentation:
    api_operation_id:
    test:
  - id: ''  # Future Scope; ARF Topic 53. Roadmap
    status: DRAFT
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST prove that a credential meets a condition, such as being over 18, without revealing the underlying claims, using zero-knowledge proofs.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF Topic 43. Roadmap
    status: DRAFT
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST refuse to present a credential to a verifier that the issuer's disclosure policy does not allow.
    documentation:
    api_operation_id:
    test:
---

Most 1.2 unlinkability requirements (ids 20, 21, 25 and ch5 5.1.2) say what verifiers and issuers must not be able to do, and cannot be tested on a wallet. They are replaced by the wallet behaviour that delivers unlinkability: fresh copies, fresh keys and no added identifiers. A code shown on screen is the same every time and cannot be unlinkable, so this functionality applies to the request-based methods.

They are marked as RECOMMENDED to allow for implementations where either the local regulation or the specific use case requires they are not implemented.

The MAC requirement applies to mdoc only, because only mdoc defines MAC-based device authentication today. 1.2 stated the goal for any format and noted that it needs HMAC or ECDH; the condition now says exactly where it can be met.

# Workflows

# Data structure
