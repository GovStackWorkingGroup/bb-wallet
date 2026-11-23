---
title: Answering a Verifier's Request
description: |
  The wallet presents verifiable credentials to a verifier when the verifier asks for them, after checking the verifier and getting the holder's consent. Each presentation is new and bound to that request and that verifier. Applies when the wallet also claims remote-presentation or proximity-presentation.
realises: [credential-presentation]
requirements:
  - id: '11'  # 1.2.0: §6.5, bullet 1
    status: PUBLISHED
    level: REQUIRED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST provide mechanisms that enable a credential verifier to establish trust in the wallet before the verifier requests a verifiable presentation.
    documentation:
    api_operation_id:
    test:
  - id: '12'  # 1.2.0: §6.5, bullet 2
    status: PUBLISHED
    level: REQUIRED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST be able to receive and process a credential verifier's request for a verifiable presentation.
    documentation:
    api_operation_id:
    test:
  - id: '13'  # 1.2.0: §6.5, bullet 3; also ch5 5.2.3 b3
    status: PUBLISHED
    level: REQUIRED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The credential wallet MUST be able to validate the verifier before presenting a credential.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF RPA_06, ProxId_03
    status: DRAFT
    level: REQUIRED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST show the holder the verifier's identity and the requested attributes before asking for consent.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF RPA_05
    status: DRAFT
    level: REQUIRED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST tell the holder when the verifier's identity could not be verified.
    documentation:
    api_operation_id:
    test:
  - id: '17'  # 1.2.0: §6.5, bullet 7
    status: PUBLISHED
    level: REQUIRED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST be able to present a verifiable presentation to the credential verifier in response to a valid request.
    documentation:
    api_operation_id:
    test:
  - id: '18'  # 1.2.0: §6.5, bullet 8. Deprecated: the verifier is the subject; belongs in a verifier specification or guide
    status: DEPRECATED
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The credential verifier SHOULD be able to verify the presentations after receiving the presentation.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ch5 5.2.4
    status: DRAFT
    level: REQUIRED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST create a new presentation for every presentation request.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ch5 5.2.4
    status: DRAFT
    level: REQUIRED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST bind every presentation to the verifier and to the nonce of the request.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ch7 7.3.3; ARF Topic 18
    status: DRAFT
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST answer a single request with attributes from more than one credential.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF DASH_03
    status: DRAFT
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST log the verifier's identity and the names of the requested claims for each presentation.
    documentation:
    api_operation_id:
    test:
---

These requirements are shared by every request-based presentation method, so they are written once here, conditional on the conformance profiles of those methods, rather than in each of them. A wallet that holds verifiable credentials and shows them only as codes reports them as not applicable.

"MUST NOT contact the issuer while it presents a credential" and "MUST NOT store the values of presented claims in the log" hold for every method, and are in the core (Presenting a Credential, Transaction Logs). Replay protection is a property of each request-based presentation, and is covered here.

# Workflows

# Data structure
