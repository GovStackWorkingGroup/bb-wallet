---
description: >-
  This section links to any external documents that may be relevant, such as
  standards documents or other descriptions of this Building Block that may be
  useful.
---

# 10 Other Resources

## **10.1 Reference Specifications**

### 10.1.1 OpenID for Verifiable Credentials Suite

1. Issuance - [OpenID4VCI - Draft 13](https://openid.net/specs/openid-4-verifiable-credential-issuance-1_0-ID1.html)
2. Presentation
   1. [OpenID4VP - Draft - 18](https://openid.net/specs/openid-4-verifiable-presentations-1_0-ID2.html)
   2. [DIF Presentation Exchange v2.1.1](https://identity.foundation/presentation-exchange/spec/v2.1.1/)
3. Pseudonymous Login - [Self-Issued OpenID Provider V2 - Draft 13](https://openid.net/specs/openid-connect-self-issued-v2-1_0.html)
4. Presentation in proximity - [OpenID4VP over BLE - Draft 0](https://openid.net/specs/openid-4-verifiable-presentations-over-ble-1_0.html)
5. Profile for High Assurance Use Cases - [OpenID4VC High Assurance Interoperability Profile with SD-JWT VC - Draft 0](https://openid.net/specs/openid4vc-high-assurance-interoperability-profile-sd-jwt-vc-1_0.html)

### 10.1.2 ISO

* Presentation in proximity (mobile driver's license)\
  [https://www.iso.org/standard/69084.html](https://www.iso.org/standard/69084.html)
* 23220-3 Issuance for mDoc (including OpenID4VCI profile with mDoc)
* 23220-4 Presentation for mDoc (including OpenID4VP profile with mDoc)

### 10.1.3 W3C

* Presentation in the Browser\
  [https://wicg.github.io/digital-identities/](https://wicg.github.io/digital-identities/)

### 10.1.4 Status Management

* Bitstring Status List: [W3C Bitstring Status List v1.0](https://www.w3.org/TR/vc-bitstring-status-list/)

### 10.1.5 Use Cases

* [W3C Verifiable Credential Use Cases](https://www.w3.org/TR/vc-use-cases/)

## **10.2 Out-of-Scope Features**

* Delegation of representing the credentials
* Low tech wallets
* The format of Credential Discovery

## **10.3 Version 2.0 Scope**

* Using the credential wallet as an authenticator
* Using the credential wallet for [eSignature](https://app.gitbook.com/o/pxmRWOPoaU8fUAbbcrus/s/ZpypLvJhKezO3prCNVTS/)
* Clear separation between Credential Issuer and Credential Verifier roles and the Wallet Building Block
* Re-writing of [5-cross-cutting-requirements.md](5-cross-cutting-requirements.md "mention") to align to [cfr-architecture-2.2.0](https://app.gitbook.com/o/pxmRWOPoaU8fUAbbcrus/s/C0KIlcm7qe4y5UQYkp98/ "mention"), namely that some requirements will be turned into Functional Requirements, and so they will be further specified as such, and some other requirements will be clarified as extensions of Core Cross-Functional Requirements.
* Functional Requirements will have Observability classifiers and as such, Tests will be made available to enable a compliance testing mechanism.
* Extensibility classifiers will be added to each requirement to clarify whether how extensions or regional implementations can be set.
