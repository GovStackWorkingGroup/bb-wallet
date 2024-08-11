---
description: >-
  This section will highlight important requirements or describe any additional
  cross-cutting requirements that apply to this Building Block.
---

# 5 Cross-Cutting Requirements

## 5.1. Privacy Considerations

### 5.1.1. Unobservability

[Unobservability](3-terminology.md#unobservability) means that neither wallet providers nor issuers shall be able to track where a holder uses his/her credentials or learns details concerning the attributes provided.

* The issuer should not be able to learn details (to whom the presentation was made, when the presentation was made, etc.) of the presentation
* The wallet provider should not be able to observe how the credentials are used

### 5.1.2. Unlinkability

Issuance and presentation protocols should support [unlinkability](3-terminology.md#unlinkability) and ensure that cryptographic keys and random numbers cannot be used as correlation identifiers, this also includes less obvious data fields such as timestamps or version numbers.

Below are a few scenarios for unlikability.

* Any outside entity should not be able to link two transactions to the same Holder
* A verifier should not be able to link two presentations to the same holder (unless the holder's information is provided as part of the presentation)
* An issuer should not be able to link two issuance transactions to the same holder (unless the holder provides information as part of the holder's authentication)
* Two verifiers should not be able to link two presentation transactions to the same holder by sharing the received presentations
* Two issuers should not be able to link two issuance transactions to the same holder by sharing the received information during the issuance
* An issuer and a verifier should not be able to link an issuance and presentations session to the same holder (unless the Holder provides sufficiently identifying information as part of their authentication to the Issuer and as part of the presented credential shared with the verifier)

### 5.1.3. Repudiation

Here, [repudiation](3-terminology.md#repudiation) is the ability to deny the transaction to third parties without affecting the reliability of the transaction where the verifier was involved.

* **Holder deniability**\
  After receiving a presentation the verifier should not be able to prove to any third party that the holder had presented the credentials to the verifier for identification purposes earlier.&#x20;
* **Deniability of Data Authenticity**\
  The verifier should not be able to prove to any third party the authenticity of the credential and the integrity of its attributes that the verifier had previously verified.

### 5.1.4. Data Minimisation

To ensure that minimal data is shared with the verifier, the wallet should incorporate various features so that the holder shares only the required data with the verifier for a specific transaction. A few of these features are,

*   **Selective Disclosure**

    The wallet (with the holder's consent) should be able to present a selected subset of the data fields (claims) from a credential while other fields are not revealed to the verifier.
* **Pseudonymity**\
  The wallet should enable the holder to present a pseudonym instead of their real identity when authenticating online or presenting credentials, except in cases where legal identification is mandatory.

### 5.1.5. Consent

The wallet should capture the holder's consent before the credentials are presented to any verifier.

## 5.2. Security Considerations

### 5.2.1. Holder Binding

The ability of the holder to prove legitimate possession of a verifiable credential. There can be multiple types of holder binding. Here, we have defined three types of holder binding.

#### 5.2.1.1. Cryptographic Holder Binding

In cryptographic holder binding, issued credentials are cryptographically bound to the identifier of the Holder who possesses the credentials. Cryptographic binding allows the verifier to verify during the presentation of a credential that the holder presenting the credential is the same holder to whom that credential was issued in the first place.

This is possible as the Holder uses the same private key during the issuance and presentation.

{% hint style="info" %}
The mechanism of performing cryptographic holder binding might depend on the type of Credential Format.
{% endhint %}

#### 5.2.1.2. Claim-based Holder Binding

In claims-based binding, no cryptographic binding identifier is provided. Instead, the issued credential includes the Holder's claims that can be used by the Verifier to verify possession of the credential by requesting the presentation of existing forms of physical or digital identification that include the same claims.

#### 5.2.1.3. Biometrics-based Holder Binding

In biometrics-based binding, the Verifier should be able to authenticate the Holder using a certain biometric trait (such as fingerprint or face) based on biometric data in the verifiable credentials.

### 5.2.2. Secure Storage

The wallet must provide a secure environment to,

* Store sensitive credential information by implementing secure cryptographic techniques
* Store the keys
  * Used for encrypting the credential data
  * Used for cryptographically binding the holder with the credentials

### 5.2.3. Trust Infrastructure

In a digital credentialing ecosystem, the trust infrastructure is vital for ensuring trust and transparency within the trust triangle (Issuer-Holder-Verifier).

<figure><img src=".gitbook/assets/trust-triangle.png" alt="" width="563"><figcaption></figcaption></figure>

* The issuer should be able to verify that the credential is shared with a trusted Wallet
* The wallet must verify that a trusted Issuer issued the credentials
* The wallet should be able to verify that the presentation is shared with a trusted verifier
* The verifier must verify that a trusted Issuer issued the credentials

### 5.2.4. Handle Replay Attacks

For every verification request, the wallet should generate a new presentation. The presentation should be bound to the presentation request and the verifier to prevent the replay of presentations.
