# Release Notes v1.0.0-rc

_Version Date: May 2025_\
&#xNAN;_&#x41;uthors: Ali González, David Higgins_

***

## **1. Overview** <a href="#id-1.-overview" id="id-1.-overview"></a>

This Release Candidate (v1.0.0-rc) version of the Wallet Building Block is published with a _Request for Comments_ for teams working on Wallet implementations for the public sector.

This specification was developed by the GovStack Wallet Working Group between February 2024 and April 2025. It describes a modular artifact that maps a minimum set of technical functionalities needed for Wallet implementations.

This version provides an initial abstraction for Digital Credentials Wallets, offering **digital credential issuance, presentation, and selective disclosure**. The abstraction of **Container**, **Contents** and **Verifiable Credentials** as described on section 2 of the specification is meant allow this document to evolve into supporting more specific use-cases and differing applications on iterating versions.

This release candidate aims to enable **structured feedback**, scope validation, and identification of key implementation and governance gaps for both complementing the first official release, and for gathering input from Wallet practitioners to identify the features for the subsequent versions of this release.

## **2. Purpose and Scope** <a href="#id-2.-purpose-and-scope" id="id-2.-purpose-and-scope"></a>

Version 1.0.0 of the Wallet Building Block provides an abstraction for Digital Wallets, covering the following set of functional features centering on Credentials:

* Issue, store, and present digital credentials;
* Support consent-driven disclosure workflows;
* Reference three formats: W3C’s Verifiable Credential Data Model, IETF’s Selective Disclosure JWT Verifiable Credentials and ISO’s mDoc Mobile Driving License;
* Allow decentralised, federated, or centralised deployments;
* Support different trust anchor models (self-declared or institutional)

## 3. Out-of-scope <a href="#id-3.-out-of-scope" id="id-3.-out-of-scope"></a>

Whilst some aspects of the Wallet are future scope, it is important to highlight certain elements will be outside the scope of the Wallet specification as they are defined in other GovStack Building Blocks:

* Identification: The attributes of creation, management, and uses of a digital foundational identity are delegated to the [Identity Building Block](https://govstack.gitbook.io/bb-identity)
* Consent: The attributes related that enable the voluntary declaration by an individual to approve the processing of their Personal Data, and the management of such consent agreement and records, are delegated to the [Consent Building Block](https://govstack.gitbook.io/bb-consent/)
* Payments: How to enable Government services to interact with payments systems (G2x or x2G) are delegated to the [Payment Building Block](https://govstack.gitbook.io/bb-payments)

## 4. Future Scope <a href="#id-4.-future-scope" id="id-4.-future-scope"></a>

We expect this specification to be enhanced both with precise guidelines for sector specific (such as Social Protection, Education, Health, Agriculture etc.) applications; standards guidance/mappings and different use-cases to be supported within the wallet, over time.

#### Functionality <a href="#functionality" id="functionality"></a>

This Wallet Building Block is intentionally scoped to Digital Credentials for identity-related use cases. It does not currently extend to payment wallets or sector-specific credential ecosystems, though future iterations shall expand the coverage based on Working Group consensus and implementation needs.

Although this version includes an initial set of functionalities for Digital Credentials, the Working Group will continue to extend the functionality for future iterations. Some of the functionalities to be evaluated are:

* Credential lifecycle governance (issuance, revocation, re-issuance, auditability).
* Institutional trust model, certification, or liability definitions.

#### Policy mapping <a href="#policy-mapping" id="policy-mapping"></a>

The Wallet Building Block avoids mapping itself to specific regulatory frameworks. **No specific conformance has been claimed, as Building Block specifications are meant to be policy-agnostic to enable their global applicability.** This means it is up to the implementer to understand the legal requirements and technical capabilities of their implementation to add more functionalities or even combine other available Building Blocks to their solution.

However, through discussions on this matter the Wallet Working Group, the Architecture Working Group and the Technical Facilitation Team have realized the following two insights:

* That a Cross-Cutting requirement for implementers to comply to a regulatory framework may be needed to implement a Wallet solution, and this may be added in a future version of this specification, once sufficient consensus is achieved on how to phrase this requirement.
* That a different publication type that guides implementers that want to use Building Blocks, but that also need to comply to specific regulations, may be needed to address this demand. For that, GovStack’s Architecture Working Group and the Technical Facilitation team will evaluate creating a policy-centric document type that can be used to map specific regulatory frameworks to GovStack’s Building Blocks.

Concerns regarding the reference to specific policy frameworks were captured by the

[Wallet WGDR no. 02 - Removing eIDAS as a requirement](https://github.com/GovStackWorkingGroup/bb-wallet/blob/main/WGDR/WALLET-WGDR-2025-05-2.md)
