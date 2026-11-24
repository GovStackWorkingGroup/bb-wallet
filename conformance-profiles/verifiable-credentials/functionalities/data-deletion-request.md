---
title: Data Deletion Request
description: |
  The holder can ask a verifier to delete credentials they presented to it earlier. Applies when the wallet also claims remote-presentation or proximity-presentation.
realises: [holder-rights]
requirements:
  - id: ''  # 1.2.0: §4.6.6; ARF DATA_DLT_01
    status: DRAFT
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST let the holder ask a verifier to delete the data presented to it.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF Topic 48
    status: DRAFT
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST let the holder start a deletion request from the log entry of the presentation it concerns.
    documentation:
    api_operation_id:
    test:
---

# Workflows

# Data structure
