# Wallet WGDR no. 03 - Wallet definition and scope for version 2.0

### Decision Title:
Wallet definition and scope for version 2.0

### Date:
2026-10-05

### Decision ID:
WALLET-WGDR-2026-10-3

### Status:

PARTIALLY CLOSED. Sub-decisions 1 to 6 are closed. Sub-decision 7 (whether a wallet must hold more than one credential) is open and has been referred to the Architecture Working Group.

### Decision Statement:

The Working Group replaces the "Container with Content" scope of version 1.2 with a narrower definition: a wallet is an edge-side (client-side) container, bound to its holder, that offers capabilities to store, share and verify credentials, supports more than one credential type, and has tamper-proofing and security mechanisms. A credential carrier, such as a QR code printed on paper, is a credential presentation and not a wallet.

### Responsible Owner(s):

Ali González, Technical Specifications Release Manager

### Supporting References:

- [Re-Scoping the Wallet Specification](https://govstack-global.atlassian.net/wiki/x/AgCLkg)
- [Wallet Capabilities 2.0](https://govstack-global.atlassian.net/wiki/x/BoAel)
- [GovStack Wallet Building Block Specification, version 1.2](https://specs.govstack.global/wallet)
- [Regulation (EU) 2024/1183 (eIDAS 2), Art. 3(42)](http://data.europa.eu/eli/reg/2024/1183/oj)
- [W3C Verifiable Credentials Data Model v2.0](https://www.w3.org/TR/vc-data-model-2.0/)
- [European Digital Identity Wallet Architecture and Reference Framework](https://eudi.dev/latest/main/)

### Voting Outcome (if applicable):

No vote was held. Decisions were reached by consensus during the Working Group discussion between Ali González, PS Ramkumar, David Higgins and Yuliia. Points where consensus was not reached are recorded as open.

## 1. Decision Drivers

- Version 1.2 scopes a wallet as "a Container with Content". The abstraction was meant to stay inclusive of different wallet formats, but it also covers a traditional physical wallet holding a physical card.
- The same scope leaves out the main value of a digital wallet over a physical one: the container protects its contents through digital mechanisms such as tamper-proofing.
- The current terminology entry ("a secure and user-controlled digital storage system designed to manage, store and present digital credentials in a standardised and interoperable format") is a good basis, but it drifts into defining digital credentials as well.
- The specification is being migrated to the new Building Block template for version 2.0, which needs a definition that the capability descriptions can build on.

## 2. Considered options

#### Sub-Decision 1: Where does a wallet live?

- Client-side only: the holder carries it on a device, such as a phone app or smart card, and can present without being online (PS Ramkumar). A wallet that only fronts credentials already held in the cloud, as with DigiLocker, adds nothing over the source.
- Loosely "carried": the wallet is the store of credentials behind an app, and the specification defines the functions those apps must offer (David Higgins).
- Narrowed to devices: in practice a wallet is stored on a phone or cryptographic device. Something held in a registry and pulled by an app is not a wallet. Flash-drive wallets raise usability problems (Yuliia).

#### Sub-Decision 2: Core noun for the definition

| Option | Outcome | Reason |
| --- | --- | --- |
| System | Rejected | Too broad in ISO terms, covering the whole EUDI ARF stack. It also lets a plain flash drive qualify. |
| Means | Rejected | "Electronic identification means" has a specific meaning in eIDAS. |
| Capability, enabler or function | Rejected | A wallet *has* several capabilities, so it cannot *be* one. |
| Repository | Rejected | Used by W3C, but reads as "just storage". |
| Container with capabilities | **Agreed** | Keeps the container idea from version 1.2 and attaches the capabilities that make it a wallet. |

#### Sub-Decision 3: Is holder binding mandatory?

- Yes
- No

#### Sub-Decision 4: Must a wallet support more than one credential type?

- Yes
- No

#### Sub-Decision 5: Wording of the security property

- "has tamper-proofing and security mechanisms to provide assurances in the lifecycle mechanisms"
- "has tamper-proofing and security mechanisms"

#### Sub-Decision 6: Is a credential carrier a wallet?

A credential carrier, such as a QR code on paper, carries a single instance of one credential, is not bound to the holder and cannot store more than one credential.

- Yes, as a low-tech wallet
- No, it is a credential presentation

#### Sub-Decision 7: Must a wallet be able to hold more than one credential?

- No requirement, left to implementers (PS Ramkumar, Yuliia, Ali González). The number of credentials is an implementation choice and security is the same for one or many. Single-credential government apps exist, such as the Barcelona metro card. The current definition says "manage, store and present" without a number.
- Required (David Higgins). The specification defines a solution, not an implementation. A government should not buy a compliant solution and later face a large change request to store a second credential. This follows the same reuse principle as the ID, Payments and Registries Building Blocks, and without it a supermarket loyalty card could claim GovStack compliance.

eIDAS 2 says wallets must hold multiple and different types of credentials, but the only source found for this reading was walt.id. The EU text refers to credential types, not counts.

## 3. Decision outcome

| Sub-decision | Outcome | Status |
| --- | --- | --- |
| 1. Where a wallet lives | A wallet is **edge-side (client-side)**. A store held in a registry and pulled by an app is not a wallet. | CLOSED |
| 2. Core noun | **Container with capabilities**: an edge-side container offering capabilities to store, share and verify credentials. | CLOSED |
| 3. Holder binding | **Mandatory.** It is needed for user control, security and verifier trust (fraud prevention, KYC). Business credentials are still bound to the person holding them. | CLOSED |
| 4. More than one credential type | **Required.** No objection was raised. | CLOSED |
| 5. Security wording | **"has tamper-proofing and security mechanisms"**, without "to provide assurances". The detail moves to the capability descriptions. | CLOSED |
| 6. Credential carrier | **Not a wallet.** It is a credential presentation, which can still be verified. | CLOSED |
| 7. More than one credential | **Not defined for now.** Referred to the Architecture Working Group. | OPEN |

The candidate definition in the Re-Scoping document uses "a holder-controlled system". It must be revised to use "container" in line with sub-decision 2.

### Action items

| Task | Owners | Status |
| --- | --- | --- |
| Rewrite the Wallet terminology entry from the current definition, removing the part that defines digital credentials and applying sub-decisions 1 to 6 | Ali González | Pending |
| Remove the "Container with Content" definition from the overview and description sections | Ali González | Pending |
| Change the "at least one of" options for credential types in the requirements so that at least two are required | Ali González | Pending |
| Describe the tamper-proofing and security mechanisms in the capability descriptions | Ali González | Pending |
| Research sub-decision 7 and bring examples to the Architecture Working Group, including whether an existing cross-cutting requirement already rules out single-use systems | David Higgins | Pending |
| Reference this decision record in the release notes for version 2.0 | Ali González | Pending |
