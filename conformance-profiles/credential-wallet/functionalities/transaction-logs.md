---
title: Transaction Logs
description: |
  The holder can see everything the wallet has done with their credentials, with timestamps.
realises: [holder-control]
requirements:
  - id: ''  # 1.2.0: §4.6.2
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST log, with date and time, every credential it adds, presents, shares or removes.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF DASH_02
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST log transactions that did not complete.
    documentation:
    api_operation_id:
    test:
  - id: ''  # 1.2.0: §4.6.2; ARF DASH_02b
    status: DRAFT
    level: REQUIRED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST show the holder the full log.
    documentation:
    api_operation_id:
    test:
  - id: ''  # ARF DASH_03a; holds for every method. USER_INTERFACE if the log the holder sees is the whole log, otherwise INTERNAL
    status: DRAFT
    level: RECOMMENDED
    mutability:
    interaction: USER_INTERFACE
    statement: The wallet MUST NOT store the values of presented claims in the log.
    documentation:
    api_operation_id:
    test:
---

"Sharing" means sending the credential itself to someone, such as a pass or bearer credential sent as a file. "Presenting" means a presentation to a verifier. See open question 3 of the proposal. What verifiable credentials add to the log is in Answering a Verifier's Request and Complaint Submission.

# Workflows

# Data structure

The Future Scope item "Updated Data-Structures supporting Audit logs" lands here.
