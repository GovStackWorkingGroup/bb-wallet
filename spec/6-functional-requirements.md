# 6 Functional Requirements

{% hint style="success" %}
The functional requirements section lists the technical capabilities that this building block should have. These requirements should be sufficient to deliver all functionality listed in the Key Digital Functionalities section.

These functional requirements do not define specific APIs - they provide a list of information about functionality that must be implemented within the building block. Subject-matter experts should define these requirements and don’t have to be highly technical in this section.

This section should contain 2 parts. The first provides the functional requirements for each functional area that is defined for the Building Block (described in Section 4). The functional requirements for each component should have its sub-section.

The second section outlines the many components that make up the Building Block. Many Building Blocks are made up of multiple components. This section can describe these (and diagrams provided where appropriate).
{% endhint %}

## 6.1 Credential Lifecycle Management

### 6.1.1. Credential Issuer

* The credential issuer MUST expose an endpoint that provides relevant information to ensure a convenient and secure credential issuance.
* The credential issuer MUST expose an endpoint using which the Wallet can receive the issued credentials.
* The credential issuer SHOULD be able to validate the wallet before issuing the credentials
* The credential issuer MUST authenticate the holder before issuing the credentials
* The credential issuer SHOULD NOT be able to link two issuance transactions to the same holder (unless the holder provides information as part of the holder's authentication)
* Two credential issuers SHOULD NOT be able to link two issuance transactions to the same holder by sharing the received information during the issuance
* The credential issuer SHOULD NOT be involved in the presentation process (Unobservability)
* The credential issuer SHOULD NOT be able to learn details of the presentation when there is a status check of the credentials by a verifier (Unobservability)

### 6.1.2. Credential Wallet

* The credential wallet MUST be able to trust the credential issuer before requesting the credentials
* The credential wallet MUST be able to validate the credential before storing the credentials
* The credential wallet MUST enable cryptographic mechanisms to store the credentials
* The credential wallet MUST have trusted hardware providing a secure environment (tamper-proof) and storage for cryptographic assets such as keys
* The credential wallet MUST be able to validate the verifier before presenting a credential
* The credential wallet SHOULD capture the holder's consent before the credentials are presented to any verifier.
* The credential wallet (with the holder's consent) SHOULD be able to present a selected subset of the data fields (claims) from a credential while other fields are not revealed to the verifier.
* The credential wallet SHOULD enable the holder to present a pseudonym instead of their real identity when authenticating online or presenting credentials, except in cases where legal identification is mandatory.
* The credential wallet backend SHOULD NOT be able to track where the credentials are being presented or learn details about the attributes of any transactions performed by the Holder (Unobservability)

### 6.1.3. Credential Verifier

* The credential verifier MUST be able to trust the credential wallet before requesting the presentations
* The credential verifier MUST be able to request a verifiable presentation
* The credential verifier MUST be able to receive the verifiable presentation from the wallet
* The credential verifier SHOULD be able to verify the presentations after receiving the presentation
* The credential verifier SHOULD NOT be able to link two presentations to the same holder (unless the holder's information is provided as part of the presentation)
* Two credential verifiers SHOULD NOT be able to link two presentation transactions to the same holder by sharing the received presentations
* After receiving a presentation the credential verifier SHOULD NOT be able to prove to any third party that the holder had presented the credentials to the verifier for identification purposes earlier.
* The credential verifier SHOULD NOT be able to prove to any third party the authenticity of the credential and the integrity of its attributes that the verifier had previously verified.
* The credential issuer and the credential verifier should not be able to link an issuance and presentation session to the same holder (unless the Holder provides sufficiently identifying information as part of their authentication to the Issuer and as part of the presented credential shared with the verifier)
