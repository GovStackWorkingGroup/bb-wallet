---
title: Technical Overview
---

## Market assessment

Products called wallets differ in what they hold and in whom they deal with:

* **Pass and ticket wallets** hold boarding passes, tickets and membership cards as PKPASS files or saved links, and show them as codes. They need no issuer or verifier that follows a credential protocol, except a pass's update service.
* **Wallets for signed codes** hold health certificates and visible digital seals scanned from QR codes or barcodes, and show them again as codes.
* **Wallets in a credentials ecosystem** hold identity credentials, driving licences and diplomas obtained over OpenID4VCI, bound to the holder, and present them over OpenID4VP or ISO/IEC 18013-5. They depend on issuers, verifiers and trust infrastructure that follow those protocols.
* **Crypto hardware wallets** hold keys the holder generates, and no credential issued by anyone. They are not wallets in the sense of this specification (WALLET-TDR-2026-10-3), though they may serve as a wallet's secure component.
* **Credential carriers**, such as a QR code printed on paper, carry one credential and are not bound to the holder. They are low-tech wallets that do not fulfil the definition, so they are out of scope as wallets. A conformant wallet makes the same presentation through the `code` option.

What every wallet does is the same: keep credentials signed by someone else secure, check them before keeping them, and present them only with the holder's consent. What differs is which credential types it handles and how it presents them, and whether it takes part in a credentials ecosystem. The conformance profiles follow that line.

## Conformance profiles

| Profile | Type | Functionalities | Requires | Suited to |
|---|---|---|---|---|
| [Credential Wallet](../conformance-profiles/credential-wallet/introduction.md) | Core | Secure Storage, Wallet Integrity, Holder Authentication, Credential Acquisition, Updating Credentials, Identifying Expired Credentials, Identifying Revoked Credentials, Removing a Credential, Portability, Presenting a Credential, Transaction Logs; Wallet as Authenticator and Signing with the Wallet (roadmap) | | Every wallet, including one for tickets and passes only |
| [Verifiable Credentials](../conformance-profiles/verifiable-credentials/introduction.md) | Extension | Verifiable Credential Acquisition, Holder Binding, Verifiable Credential Lifecycle, Answering a Verifier's Request, Privacy-preserving Presentation, Complaint Submission, Data Deletion Request | | Wallets in a credentials ecosystem |
| [Remote Presentation](../conformance-profiles/remote-presentation/introduction.md) | Extension | Remote Presentation | Verifiable Credentials | Online services that verify credentials |
| [Proximity Presentation](../conformance-profiles/proximity-presentation/introduction.md) | Extension | Proximity Presentation | Verifiable Credentials | In-person checks, gates |

The core offers two choices, each met through at least one option:

| Variation point | Options met in the core | Options met by claiming an extension |
|---|---|---|
| Credential Acquisition: which credential types the wallet handles | `bearer` bearer credentials, `pass` passes | `vc`, by claiming Verifiable Credentials |
| Presenting a Credential: how the wallet presents | `code` the signed code a credential was issued with, `file` a credential file (roadmap) | by claiming Remote Presentation (OpenID4VP) or Proximity Presentation (ISO/IEC 18013-5) |

Every credential type a wallet acquires must be presentable through a presentation option it meets.

## What a conformance claim looks like

A wallet declares the options it meets and the extensions it claims. GovMarket shows both as facts, not as a score.

| Kind of product | Claim |
|---|---|
| Wallet in a credentials ecosystem | Wallet 2.0: Credential Wallet (vc; remote, proximity), Verifiable Credentials, Remote Presentation, Proximity Presentation |
| Wallet for in-person checks at gates | Wallet 2.0: Credential Wallet (vc; proximity), Verifiable Credentials, Proximity Presentation |
| Wallet for tickets and passes | Wallet 2.0: Credential Wallet (pass, bearer; code) |
| Wallet holding signed health certificates issued as W3C VC Barcodes | Wallet 2.0: Credential Wallet (vc; code), Verifiable Credentials. Answering a Verifier's Request, Privacy-preserving Presentation, Complaint Submission and Data Deletion Request not applicable |
| Wallet that adds passes but presents only over OpenID4VP | Not conformant: its passes cannot be presented |
| Crypto hardware wallet | Not conformant: it holds no credential signed by an issuer |

## How the profiles divide the capabilities

| Capability | Credential Wallet | Verifiable Credentials | Remote Presentation | Proximity Presentation |
|---|---|---|---|---|
| Secure Credential Custody | Secure Storage, Wallet Integrity, Holder Authentication | Holder Binding: keys bound to each credential | | |
| Credential Collection | Credential Acquisition: bearer credentials, passes | Verifiable Credential Acquisition: from issuers over OpenID4VCI | | |
| Credential Currency | Updating, Identifying Expired, Identifying Revoked | Verifiable Credential Lifecycle: status lists, reissuance | | |
| Credential Presentation | Presenting a Credential: codes, files | Answering a Verifier's Request, Holder Binding | Remote Presentation | Proximity Presentation |
| Holder Control | Removing, Portability, Transaction Logs, consent | Verifiable Credential Lifecycle: moving credentials by reissuance | | |
| Privacy-Preserving Disclosure | | Privacy-preserving Presentation | | |
| Holder Recourse | | Complaint Submission, Data Deletion Request | | |
| Online Authentication | Wallet as Authenticator (roadmap) | | | |
| Document Signing | Signing with the Wallet (roadmap) | | | |

Privacy-Preserving Disclosure and Holder Recourse are provided only by wallets that claim Verifiable Credentials and a request-based presentation profile. A code shown on screen is the same every time and identifies no verifier, so it can offer neither.
