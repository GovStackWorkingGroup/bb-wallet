---
title: Complaint Submission
description: |
  The holder can complain about a verifier to the supervisory body responsible for it. Applies when the wallet also claims remote-presentation or proximity-presentation, because the wallet knows a verifier only when it has authenticated it in a request-based presentation.
realises: [holder-rights]
requirements:
  - id: ''  # 1.2.0: §4.6.5 ("must"); ARF RPT_DPA_01
    status: DRAFT
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST let the holder start a complaint about a verifier to the supervisory body responsible for that verifier.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF RPT_DPA_02
    status: DRAFT
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST let the holder start a complaint from the log entry of the presentation it concerns.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF RPT_DPA_04. Roadmap
    status: DRAFT
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST attach to a complaint, with the holder's approval, the verifier's identity and the request that was made.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF DATA_DLT_05, RPT_DPA_05
    status: DRAFT
    level: RECOMMENDED
    applies_when: [remote-presentation, proximity-presentation]
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST log complaints and data deletion requests sent by the holder.
    documentation:
    api_operation_id:
    test:
---

1.2 says "must", but the wallet can only do this if the supervisory body is known for each verifier. That depends on trust infrastructure the specification does not define yet, hence RECOMMENDED. See open question 9 of the proposal.

# Workflows

# Data structure
