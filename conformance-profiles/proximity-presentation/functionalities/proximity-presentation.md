---
title: Proximity Presentation
description: |
  The holder presents credentials in person, without either side being online, over NFC or Bluetooth Low Energy as specified in ISO/IEC 18013-5. The session can start from a QR code shown by the wallet or from a tap on an NFC reader, such as an access gate. Meets the proximity presentation option of Presenting a Credential.
realises: [credential-presentation]
requirements:
  - id: ''  # stands in for requiring option mdoc of Verifiable Credential Acquisition, which requires cannot name: open question 11 of the proposal
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: FILE
    statement: The wallet MUST accept credentials in the ISO/IEC 18013-5 mdoc format.
    documentation:
    api_operation_id:
    test:
  - id: ''  # source list ("RFID"); ARF OIA_01, ProxId_01
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: PROTOCOL
    statement: The wallet MUST present mdoc credentials in person over NFC or Bluetooth Low Energy as specified in ISO/IEC 18013-5.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ISO/IEC 18013-5
    status: DRAFT
    level: REQUIRED
    mutability: EXTENSIBLE
    statement: The wallet MUST start a proximity presentation through at least one of the device engagement methods in the options below.
    documentation:
    select:
      min: 1
    options:  # no interaction or test of its own: verified by counting the options that pass
      - id: ''  # ISO/IEC 18013-5
        key: qr
        status: DRAFT
        level: OPTION
        interaction: PROTOCOL
        statement: The wallet shows a QR code for device engagement.
        documentation:
        test:
      - id: ''  # ISO/IEC 18013-5
        key: nfc
        status: DRAFT
        level: OPTION
        interaction: DEVICE
        statement: The wallet performs device engagement when the holder taps the device on an NFC reader, such as a gate.
        documentation:
        test:
---

"RFID" in the source list: phones do in-person exchange over NFC (an RFID technology) or Bluetooth, set up through NFC or a QR code, as ISO/IEC 18013-5 describes. In `qr` engagement the code carries the keys and connection details for the session, not the credential, unlike the `code` option of Presenting a Credential, where the code is the credential.

# Workflows

# Data structure
