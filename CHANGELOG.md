---
title: Changelog
---

# Changelog

All notable changes to the Wallet Building Block specification are recorded here. The format follows [Keep a Changelog 1.1.0](https://keepachangelog.com/en/1.1.0/), and the specification uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

Each entry names the requirement it affects and that requirement's level. Requirements still in `DRAFT` are not listed until they are published. For what to do when moving from one major version to the next, see the [Release Notes](RELEASE_NOTES.md).

## Unreleased

### Changed

- **BREAKING:** The specification moves to the GovSpecs 2.0 template. `requirements/` is replaced by `conformance-profiles/`, with one core profile, Credential Wallet, and three extensions: Verifiable Credentials, Remote Presentation and Proximity Presentation. A wallet's conformance claim names the profiles it meets. ([#12](https://github.com/GovStackWorkingGroup/bb-wallet/pull/12))
- **BREAKING:** The "Container with Content" definition of a Wallet is replaced by a narrower one: a holder-bound digital vault that manages credentials and related artefacts, stored in a tamper-proof way and used securely. ([WALLET-TDR-2026-10-3](ADR/WALLET-TDR-2026-10-3.md), [#12](https://github.com/GovStackWorkingGroup/bb-wallet/pull/12))
- 1.2.0 §5.2.2, bullet 3 (REQUIRED): the requirement to store the keys that bind the holder to the credentials moves from Secure Storage to Holder Binding in the Verifiable Credentials profile, since only verifiable credentials have holder-binding keys. Secure Storage keeps a note that quotes the 1.2.0 wording and links to Holder Binding.
- Rewrote the informative chapters: Purpose replaces Overview, a new Technical Overview describes the conformance profiles, and the references are in Markdown.

### Removed

- id 6 (REQUIRED): replaced by a requirement that covers every credential type, in Credential Acquisition.
- id 10 (RECOMMENDED): split into the expiry requirement in Identifying Expired Credentials, the revocation requirement in Identifying Revoked Credentials, and the status-list check in Verifiable Credential Lifecycle.
- ids 2, 9 and 15 (RECOMMENDED): the issuer is the subject. Replaced by wallet requirements in Verifiable Credential Acquisition, Verifiable Credential Lifecycle and Presenting a Credential.
- ids 18 and 20 (RECOMMENDED): the verifier is the subject. Id 18 belongs in a verifier specification; id 20 is replaced by the batch-copy requirement in Privacy-preserving Presentation.
- id 23 (RECOMMENDED): the wallet backend is the subject. Replaced by a wallet requirement in Presenting a Credential.
- ids 21 and 25 (RECOMMENDED): replaced by the batch-copy requirement in Privacy-preserving Presentation.
- ids 22 and 24 (RECOMMENDED): merged into the mdoc MAC requirement in Privacy-preserving Presentation.

## 1.2.0 - 2026-05-01

### Changed

- 6.2.1, 6.5.1, 6.5.2 and 6.5.7 (REQUIRED): rewritten so that the wallet, rather than the issuer or the verifier, is the subject. ([GITBOOK-52](https://github.com/GovStackWorkingGroup/bb-wallet/commit/7ce18dfa3e0d0a92fa8f080f16d13cc46202b6ba))

### Removed

- 5.2.3 (REQUIRED): "The verifier MUST verify that a trusted Issuer issued the credentials." To be moved to another section, no longer as REQUIRED. ([GITBOOK-51](https://github.com/GovStackWorkingGroup/bb-wallet/commit/c0b800498d37ea35d79d4ddb9d56c1d45f5d1598))
- 6.1.2 (REQUIRED): "The credential issuer MUST expose an endpoint that provides relevant information to ensure convenient and secure credential issuance." No longer REQUIRED. ([GITBOOK-51](https://github.com/GovStackWorkingGroup/bb-wallet/commit/c0b800498d37ea35d79d4ddb9d56c1d45f5d1598))

### Fixed

- 5.1.3.1 Selective Disclosure and 5.1.3.2 Pseudonymity: reformatted for machine readability. ([GITBOOK-51](https://github.com/GovStackWorkingGroup/bb-wallet/commit/c0b800498d37ea35d79d4ddb9d56c1d45f5d1598))
- 5.1.4.2 Storage of keys: the bullet list is written out as two separate requirements, making clear that conformance is checked against each. ([GITBOOK-51](https://github.com/GovStackWorkingGroup/bb-wallet/commit/c0b800498d37ea35d79d4ddb9d56c1d45f5d1598))

## 1.1.0 - 2025-12-01

### Changed

- Section 4: every requirement is classified REQUIRED or RECOMMENDED, following GovSpecs 2.0.
- Terminology: Credential, Digital Credential, Verifiable Credentials and PII move to the shared Common ID Terminology, which the specification now links.

### Removed

- Terminology: Digital Locker, Digital Vault and Electronic Attribute Attestation (EAA).

### Fixed

- Section 2: grammar and typing errors.

## 1.0.0 - 2025-09-01

### Added

- First release, after the Request for Comments of May to July 2025: credential issuance, storage, presentation and selective disclosure, for W3C Verifiable Credentials, SD-JWT VC and ISO mDoc.
