---
title: Scope
---

## Specification Scope

Version 2.0 of the Wallet Building Block specifies what a wallet does for its holder, and towards the issuers and verifiers it deals with. A wallet, in this specification, is a holder-bound digital vault that manages credentials and related artefacts, stored in a tamper-proof way and used securely ([WALLET-TDR-2026-10-3](../ADR/WALLET-TDR-2026-10-3.md)). The specification covers:

* Keeping credentials secure: secure storage, wallet integrity and holder authentication.
* Acquiring credentials of three types: bearer credentials, such as signed health certificates scanned from a QR code; passes, such as tickets and boarding passes; and verifiable credentials obtained from issuers over OpenID4VCI.
* Keeping credentials current: updates, expiry and revocation, and for verifiable credentials, status lists and reissuance.
* Presenting credentials only at the holder's direction and with their consent: as the signed code a credential was issued with, online over OpenID4VP, or in person as specified in ISO/IEC 18013-5.
* Holder control: removing credentials, moving them to a new device, and keeping a log of transactions.
* For verifiable credentials: binding each credential to its holder, disclosing only what a transaction needs, and letting the holder complain about, and ask for deletion from, the verifiers they presented credentials to.

The specification is independent of any single credential format. It references the W3C Verifiable Credentials Data Model, IETF SD-JWT VC and ISO/IEC 18013-5 mdoc for verifiable credentials.

Its requirements are grouped into conformance profiles: a core profile that every conformant wallet meets, and extensions for verifiable credentials and for remote and proximity presentation. The [Technical Overview](technical_overview.md) describes the profiles and what a conformance claim looks like.

## Out of Scope

The specification describes only the wallet. What Credential Issuers, Credential Verifiers and trust registries do is outside it; their roles will be described by the Domain Reference Architecture for credentials (`govstack:ra:credentials`), which is in preparation.

Some elements are outside the scope of the Wallet specification because they are defined in other GovStack Building Blocks:

* Identification: the creation, management and use of a digital foundational identity are delegated to the [Identity Building Block](https://specs.govstack.global/identity).
* Consent: recording and managing the consent agreements by which a person approves the processing of their personal data is delegated to the [Consent Building Block](https://specs.govstack.global/consent/). The wallet still obtains the holder's consent for each presentation.
* Payments: how government services interact with payment systems (G2x or x2G) is delegated to the [Payments Building Block](https://specs.govstack.global/payments). Payment wallets are not covered.

The following are also out of scope:

* Key stores that hold no credential issued by someone else, such as crypto hardware wallets. They may serve as a wallet's secure component, but are not wallets in the sense of this specification (WALLET-TDR-2026-10-3).
* Low-tech wallets, unless they fulfil the definition of a Wallet above. A credential carrier, such as a QR code printed on paper, is not a wallet: it is a credential presentation (WALLET-TDR-2026-10-3, sub-decision 6).
* Delegation of representing the credentials.
* The format of Credential Discovery.

## Future Scope

### Roadmap in this version

The following are already placed in the specification, but have no published requirements yet:

* Wallet as Authenticator: the holder logs in to online services with the wallet.
* Signing with the Wallet: the holder signs documents with keys held in the wallet, aligned with the [eSignature Building Block](https://specs.govstack.global/esignature/).
* Presenting a credential as a file, through the device's share function.
* Receiving a presentation request through the W3C Digital Credentials API.
* Backing up and restoring credentials and the transaction log.
* Wallet instance attestation and revocation by the wallet provider.
* Updating passes through their update service, and updating credentials with the holder's approval.
* Biometric holder binding.
* Zero-knowledge proofs that a credential meets a condition, and issuer disclosure policies.
* Requesting a new batch of copies of a batch-issued credential, and attaching the verifier's request to a complaint.

### Considerations

The following have been noted for future releases:

* How trust between wallets, issuers and verifiers is established and maintained, including trust lists of issuers and verifiers (this will be looked at across all Identity related Building Blocks).
* Institutional trust models, certification and liability.
* A review of the definition of repudiation, and how the verifier is involved.
* How the wallet recovers from security breaches.
* Key rotation and cryptographic key recovery.
* Wallet synchronisation across devices and between wallets.
* Interoperability between wallet solutions.
* Internationalisation and auditability of wallets.
* The core DID document structure.
* Guidelines for sector-specific applications, such as social protection, education, health and agriculture.
