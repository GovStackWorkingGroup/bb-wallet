# Release Notes

## **Version 1**

***

## _v1.2.0_

_Version Date: May 2026_\
&#xNAN;_&#x41;uthor: Yuliia Kravchenko_

***

### 1. Overview

During discussions and reviews of the Wallet BB process, we identified that some requirements may be impossible for a wallet vendor to comply with. Two main issues were highlighted:

* To achieve full compliance, all three components must be developed: verifier, holder, and issuer. As a result, developing only the wallet (holder) is insufficient, which creates a barrier for wallet providers.
* Some REQUIRED requirements relate to the verifier and issuer rather than the wallet itself, which further compounds the issue above.

Following discussions within the WG, the following decisions were made:

* First, some REQUIRED requirements were reframed so that the holder, rather than the verifier or issuer, became the primary focus of the requirement (CR 52).
* Second, some requirements (CR 51) were temporarily removed. There is ongoing discussion within the WG on whether these requirements should be moved to a separate section of the BB dedicated specifically to issuer and verifier requirements, potentially as RECOMMENDED or optional requirements. This approach would still allow wallet vendors to achieve compliance with the Wallet BB.

Another option under consideration is to create separate BBs for verifiers and issuers. The WG will continue its work to determine which option is the most feasible.

To address the issues described above, CR 51 and CR 52 were created. Note that only REQUIRED requirements were considered in the current change, as these are necessary for compliance testing. The WG will continue reviewing the remaining requirements.

### 2. Changes

#### 2.1 Format-only changes

* Format of **5.1.3.1 Selective Disclosure** and **5.1.3.2 Pseudonimity** was changed from `{Title} ({Level classifier}) <br> {Description}`\` to `` {Title}: {Description} ({Level classifier})` `` for machine-readibility. - [GITBOOK-51](https://github.com/GovStackWorkingGroup/bb-wallet/commit/c0b800498d37ea35d79d4ddb9d56c1d45f5d1598)
* **5.1.4.2 Storage of keys** - Format changed from bullet points to complete enunciation of each requirement as separate for machine-readibility. This clarifies that compliance is against two different requirements. - [GITBOOK-51](https://github.com/GovStackWorkingGroup/bb-wallet/commit/c0b800498d37ea35d79d4ddb9d56c1d45f5d1598)

#### 2.2 Substance changes

The main change of this version can be seen in Change Request [GITBOOK-52](https://github.com/GovStackWorkingGroup/bb-wallet/commit/7ce18dfa3e0d0a92fa8f080f16d13cc46202b6ba). The following requirements were rewritten to so that the holder, rather than the verifier or issuer, became the primary focus of the requirement:&#x20;

* 6.2.1 The credential issuer MUST authenticate the holder before issuing the credentials (REQUIRED)
* 6.5.1 The credential verifier MUST be able to trust the credential wallet before requesting the presentations (REQUIRED)
* 6.5.2 The credential verifier MUST be able to request a verifiable presentation (REQUIRED)
* 6.5.7 The wallet MUST be able to present a verifiable presentation to the credential verifier in response to a valid request. (REQUIRED)

#### 2.3 Removals

The following requirements were removed:

<table><thead><tr><th width="255">Requirement</th><th width="364">Description</th><th width="148">Change Request</th></tr></thead><tbody><tr><td>5.2.3: “The verifier MUST verify that a trusted Issuer issued the credentials.” </td><td>This requirement will be moved to a different section and will no longer be classified as REQUIRED.</td><td><a href="https://github.com/GovStackWorkingGroup/bb-wallet/commit/c0b800498d37ea35d79d4ddb9d56c1d45f5d1598">GITBOOK-51</a></td></tr><tr><td>6.1.2: “The credential issuer MUST expose an endpoint that provides relevant information to ensure convenient and secure credential issuance.”</td><td>This requirement will no longer be classified as REQUIRED.</td><td><a href="https://github.com/GovStackWorkingGroup/bb-wallet/commit/c0b800498d37ea35d79d4ddb9d56c1d45f5d1598">GITBOOK-51</a></td></tr></tbody></table>

#### 2.2 Removals

The following requirements are removed:

<table><thead><tr><th width="343">Requirement</th><th width="249">Description</th><th width="148">Change Request</th></tr></thead><tbody><tr><td>5.2.3: “The verifier MUST verify that a trusted Issuer issued the credentials.” </td><td>This requirement will be moved to a different section and will no longer be classified as REQUIRED.</td><td><a href="https://github.com/GovStackWorkingGroup/bb-wallet/commit/c0b800498d37ea35d79d4ddb9d56c1d45f5d1598">GITBOOK-51</a></td></tr><tr><td>6.1.2: “The credential issuer MUST expose an endpoint that provides relevant information to ensure convenient and secure credential issuance.”</td><td>This requirement will no longer be classified as REQUIRED.</td><td><a href="https://github.com/GovStackWorkingGroup/bb-wallet/commit/c0b800498d37ea35d79d4ddb9d56c1d45f5d1598">GITBOOK-51</a></td></tr></tbody></table>



### 3. Next version scope

The following items are considered for version 2.0 of the Wallet Building Block:

* Clear separation between Credential Issuer and Credential Verifier roles and the Wallet Building Block
* Re-writing of [5-cross-cutting-requirements.md](../5-cross-cutting-requirements.md "mention") to align to [cfr-architecture-2.2.0](https://app.gitbook.com/o/pxmRWOPoaU8fUAbbcrus/s/C0KIlcm7qe4y5UQYkp98/ "mention"), namely that some requirements will be turned into Functional Requirements, and so they will be further specified as such, and some other requirements will be clarified as extensions of Core Cross-Functional Requirements.
* Functional Requirements will have Observability classifiers and as such, Tests will be made available to enable a compliance testing mechanism.
* Extensibility classifiers will be added to each requirement to clarify whether how extensions or regional implementations can be set.

***

## _v1.1.0_

_Version Date: December 2025_\
&#xNAN;_&#x41;uthors: David Higgins_

***

### 1. Overview

This release of the Wallet Building Block was developed between September and December, 2025 by the **Cross-Functional ID Infrastructure Working Group**, a super-group of all the key Identity and Trust-related Building Blocks in GovStack (e-signature, identity, Wallet, Consent).

Release 1.1 of Wallet is the result of a review of all 4 specifications to ensure their are aligned and consistent to a single Identity Universe. As a result, a shared ID Terminology reference document was created and some terms from this Building Blocked were moved there.

This release also removed the entries for `Digital Locker`, `Digital Vault`, and `Electronic Attribute Attestation (EAA)` from the Terminology. \<insert here the logic behind this change>

### 2. Changes

#### **Section 1 - Version History**

* Update to Authors
* Addition of Release notes for release

#### **Section 2 - Description**

* Minor Grammatical / Typo corrections

#### **Section 3 - Terminology**

* Link to Common ID terminology
* Moved the following terms to the Common ID Terminology:
  * Credential
  * Digital Credential
  * Verifiable Credentials (VCs)
  * PII (Personally Identifiable Information)&#x20;
* Removed the following terms:
  * Digital Locker
  * Digital Vault
  * Electronic Attribute Attestation (EAA)

#### **Section 4 - Key Digital Functionality**

* Changes to ensure all requirements meet GovSpecs 2.0 standards of (Required/Recommended)

***

## &#x76;_&#x31;.0.0_

_Version Date: May 2025_\
&#xNAN;_&#x41;uthors: Ali González, David Higgins_

***

### **1. Overview** <a href="#id-1.-overview" id="id-1.-overview"></a>

This Release version of the Wallet Building Block is published following a _Request for Comments_ for teams working on Wallet implementations for the public sector.

This specification was developed by the GovStack Wallet Working Group between February 2024 and April 2025. The _Request for Comments_ phase occured between May and July 2025. Updates following review occured in the period July-August 2025 to create this release version. It describes a modular artifact that maps a minimum set of technical functionalities needed for Wallet implementations.

This version provides an initial abstraction for Digital Credentials Wallets, offering **digital credential issuance, presentation, and selective disclosure**. The abstraction of **Container**, **Contents** and **Verifiable Credentials** as described on section 2 of the specification is meant allow this document to evolve into supporting more specific use-cases and differing applications on iterating versions.

This release version, will be built upon by the Wallet Working Group to enhance with additional features for the subsequent versions of this release.

### **2. Purpose and Scope** <a href="#id-2.-purpose-and-scope" id="id-2.-purpose-and-scope"></a>

Version 1.0.0 of the Wallet Building Block provides an abstraction for Digital Wallets, covering the following set of functional features centering on Credentials:

* Issue, store, and present digital credentials;
* Support consent-driven disclosure workflows;
* Reference three formats: W3C’s Verifiable Credential Data Model, IETF’s Selective Disclosure JWT Verifiable Credentials and ISO’s mDoc Mobile Driving License;
* Allow decentralised, federated, or centralised deployments;
* Support different trust anchor models (self-declared or institutional)

### 3. Out-of-scope <a href="#id-3.-out-of-scope" id="id-3.-out-of-scope"></a>

Whilst some aspects of the Wallet are future scope, it is important to highlight certain elements will be outside the scope of the Wallet specification as they are defined in other GovStack Building Blocks:

* Identification: The attributes of creation, management, and uses of a digital foundational identity are delegated to the [Identity Building Block](https://govstack.gitbook.io/bb-identity)
* Consent: The attributes related that enable the voluntary declaration by an individual to approve the processing of their Personal Data, and the management of such consent agreement and records, are delegated to the [Consent Building Block](https://govstack.gitbook.io/bb-consent/)
* Payments: How to enable Government services to interact with payments systems (G2x or x2G) are delegated to the [Payment Building Block](https://govstack.gitbook.io/bb-payments)

### 4. Future Scope <a href="#id-4.-future-scope" id="id-4.-future-scope"></a>

We expect this specification to be enhanced both with precise guidelines for sector specific (such as Social Protection, Education, Health, Agriculture etc.) applications; standards guidance/mappings and different use-cases to be supported within the wallet, over time.

**Considerations**

The following considerations have been noted during the release review process for consideration in future releases:

* Providing details on how Trust can be established and maintained (this will be looked at across all Identity related BBs).
* Review and enhance repudiation definition with how the verifier is involved
* How system recovery from security breaches occurs
* Internationalisation of Digital Credential Wallets
* Auditability of Digital Credential Wallets
* Requirements for interoperability between Wallet Solutions
* Updated Data-Structures supporting Audit logs, User preferences, and backup/restore information.
* Outline the core DID document structure.

**Functionality**

This Wallet Building Block is intentionally scoped to Digital Credentials for identity-related use cases. It does not currently extend to payment wallets or sector-specific credential ecosystems, though future iterations shall expand the coverage based on Working Group consensus and implementation needs.

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

**Policy mapping**

The Wallet Building Block avoids mapping itself to specific regulatory frameworks. **No specific conformance has been claimed, as Building Block specifications are meant to be policy-agnostic to enable their global applicability.** This means it is up to the implementer to understand the legal requirements and technical capabilities of their implementation to add more functionalities or even combine other available Building Blocks to their solution.

However, through discussions on this matter the Wallet Working Group, the Architecture Working Group and the Technical Facilitation Team have realized the following two insights:

* That a Cross-Cutting requirement for implementers to comply to a regulatory framework may be needed to implement a Wallet solution, and this may be added in a future version of this specification, once sufficient consensus is achieved on how to phrase this requirement.
* That a different publication type that guides implementers that want to use Building Blocks, but that also need to comply to specific regulations, may be needed to address this demand. For that, GovStack’s Architecture Working Group and the Technical Facilitation team will evaluate creating a policy-centric document type that can be used to map specific regulatory frameworks to GovStack’s Building Blocks.

Concerns regarding the reference to specific policy frameworks were captured by the

[Wallet WGDR no. 02 - Removing eIDAS as a requirement](../../WGDR/WALLET-WGDR-2025-05-2.md)



