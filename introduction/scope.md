---
title: Scope
---

## Specification Scope
<!-- From Release Notes -->
Version 1.x of the Wallet Building Block provides an abstraction for Digital Wallets, covering the following set of functional features centering on Credentials:

* Issue, store, and present digital credentials;
* Support consent-driven disclosure workflows;
* Reference three formats: W3C’s Verifiable Credential Data Model, IETF’s Selective Disclosure JWT Verifiable Credentials and ISO’s mDoc Mobile Driving License;
* Allow decentralised, federated, or centralised deployments;
* Support different trust anchor models (self-declared or institutional)

This Wallet Building Block is intentionally scoped to Digital Credentials for identity-related use cases. It does not currently extend to payment wallets or sector-specific credential ecosystems, though future iterations shall expand the coverage based on Working Group consensus and implementation needs.

## Out of Scope

Whilst some aspects of the Wallet are future scope, it is important to highlight certain elements will be outside the scope of the Wallet specification as they are defined in other GovStack Building Blocks:

* Identification: The attributes of creation, management, and uses of a digital foundational identity are delegated to the [Identity Building Block](https://specs.govstack.global/identity)
* Consent: The attributes related that enable the voluntary declaration by an individual to approve the processing of their Personal Data, and the management of such consent agreement and records, are delegated to the [Consent Building Block](https://specs.govstack.global/consent/)
* Payments: How to enable Government services to interact with payments systems (G2x or x2G) are delegated to the [Payment Building Block](https://specs.govstack.global/payments)

The following features are also out of scope:
<!-- From wallet/10-other-resources#id-10.2-out-of-scope-features -->
* Delegation of representing the credentials
* Low tech wallets
* The format of Credential Discovery

## Future Scope

We expect this specification to be enhanced both with precise guidelines for sector specific (such as Social Protection, Education, Health, Agriculture etc.) applications; standards guidance/mappings and different use-cases to be supported within the wallet, over time.

### Considerations

The following considerations have been noted during the release review process for consideration in future releases:

* Providing details on how Trust can be established and maintained (this will be looked at across all Identity related BBs).
* Review and enhance repudiation definition with how the verifier is involved
* How system recovery from security breaches occurs
* Internationalisation of Digital Credential Wallets
* Auditability of Digital Credential Wallets
* Requirements for interoperability between Wallet Solutions
* Updated Data-Structures supporting Audit logs, User preferences, and backup/restore information.
* Outline the core DID document structure.

### Functionality

Although this version includes an initial set of functionalities for Digital Credentials, the Working Group will continue to extend the functionality for future iterations. Some of the functionalities to be evaluated are:

* Credential lifecycle governance (issuance, revocation, re-issuance, auditability).
* Institutional trust model, certification, or liability definitions.
* How Biometric Binding and Authentication can strengthen security
* Zero-knowledge proof
* Key Management
* Key Rotation considerations and how this could enhance tamper resistance
* How Trust Lists could be maintained of trusted issuers and verifiers (this will be looked at across all Identity related BBs).
* Revocation Mechanism to invalidate issued credentials
* Backup and Restore/Recovery capabilities
* Wallet Synchronisation, including Multi-Device and Multi-Wallet synchronisation considerations.
* Cryptographic Key recovery

### Version 2.0 Scope

* Using the credential wallet as an authenticator
* Using the credential wallet for [eSignature](https://specs.govstack.global/esignature/)
* Clear separation between Credential Issuer and Credential Verifier roles and the Wallet Building Block
* Re-writing of the Cross-Cutting Requirements to align to [cfr-architecture-2.2.0](https://specs.govstack.global/architecture), namely that some requirements will be turned into Functional Requirements, and so they will be further specified as such, and some other requirements will be clarified as extensions of Core Cross-Functional Requirements.
* Functional Requirements will have Observability classifiers and as such, Tests will be made available to enable a compliance testing mechanism.
* Extensibility classifiers will be added to each requirement to clarify whether how extensions or regional implementations can be set.
