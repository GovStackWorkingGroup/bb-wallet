---
title: Remote Presentation
description: |
  The wallet presents verifiable credentials to an online verifier over OpenID4VP, either on the same device or from another device. Meets the remote presentation option of Presenting a Credential.
realises: [credential-presentation]
requirements:
  - id: ''  # ch9 9.2
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST present verifiable credentials to an online verifier over OpenID4VP.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ch9 9.2
    status: DRAFT
    level: REQUIRED
    mutability: EXTENSIBLE
    statement: The wallet MUST receive OpenID4VP requests through at least one of the channels in the options below.
    documentation:
    select:
      min: 1
    options:  # no interaction or test of its own: verified by counting the options that pass
      - id: ''  # ch9 9.2.1
        key: same-device
        status: DRAFT
        level: OPTION
        interaction: PROTOCOL
        statement: The wallet receives the request from a verifier on the same device.
        documentation:
        test:
      - id: ''  # ch9 9.2.2
        key: cross-device
        status: DRAFT
        level: OPTION
        interaction: PROTOCOL
        statement: The wallet receives the request from a verifier on another device by scanning a QR code shown by the verifier.
        documentation:
        test:
      - id: ''  # ARF PAD_05. Roadmap
        key: dc-api
        status: DRAFT
        level: OPTION
        interaction: PROTOCOL
        statement: The wallet receives the request through the W3C Digital Credentials API.
        documentation:
        test:
---

In `cross-device` the QR code carries the verifier's request, not the credential. The credential goes to the verifier online.

# Workflows

Chapter 9.2 of 1.2.

# Data structure

Chapter 7.3.3 Presentation Definition and 7.3.4 VP Token of 1.2.
