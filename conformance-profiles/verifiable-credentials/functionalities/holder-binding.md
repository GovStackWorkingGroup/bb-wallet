---
title: Holder Binding
description: |
  A verifier can check that the person presenting a credential is the person it was issued to. Holder binding is a property of the credential, set at acquisition.
realises: [secure-custody, credential-presentation]
requirements:
  - id: ''  # ch5 5.2.1
    status: DRAFT
    level: REQUIRED
    mutability: EXTENSIBLE
    statement: The wallet MUST support at least one of the holder binding types in the options below.
    documentation:
    select:
      min: 1
    options:  # no interaction or test of its own: verified by counting the options that pass
      - id: ''  # ch5 5.2.1.1; ARF OIA_02
        key: crypto
        status: DRAFT
        level: OPTION
        interaction: PROTOCOL
        statement: The wallet proves possession of the private key bound to a credential, at issuance and at every request-based presentation.
        documentation:
        test:
      - id: ''  # ch5 5.2.1.2
        key: claim
        status: DRAFT
        level: OPTION
        interaction: PROTOCOL
        statement: The wallet presents the claims that bind a credential to its holder, such as name and date of birth, when the verifier requests them.
        documentation:
        test:
      - id: ''  # ch5 5.2.1.3; Future Scope "Biometric Binding". Roadmap
        key: bio
        status: DRAFT
        level: OPTION
        interaction: PROTOCOL
        statement: The wallet presents biometric data held in a credential, such as a portrait, so that the verifier can match it against the holder.
        documentation:
        test:
  - id: ''  # ch5 5.2.2 b3; ARF WUA_06. DEVICE when a test checks key attestation; INTERNAL when the device offers none (ARCH-ADR-8)
    status: DRAFT
    level: REQUIRED
    applies_when: [crypto]
    mutability:
    interaction: DEVICE
    statement: The wallet MUST store the private keys used for holder binding so that they cannot be exported from the secure environment.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ch5 5.1.2 b2, b4
    status: DRAFT
    level: RECOMMENDED
    applies_when: [crypto]
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST use a different holder-binding key for each credential it requests.
    documentation:
    api_operation_id:
    test:
---

Proof of possession at presentation is required by Answering a Verifier's Request for the request-based methods. A code shown on screen cannot carry it.

The 1.2 descriptions of the three binding types (chapter 5.2.1) become the body of this file.

# Workflows

# Data structure
