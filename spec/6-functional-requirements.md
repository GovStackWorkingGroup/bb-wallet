---
description: This section lists the technical capabilities of this Building Block.
---

# 6 Functional Requirements

## 6.1. Credential Discovery

* The credential wallet should host the credential offering endpoint that the credential issuer should call to share the [credential offer](spec/3-terminology.md) (RECOMMENDED)
* The credential issuer MUST expose an endpoint that provides relevant information to ensure a convenient and secure credential issuance. (REQUIRED)

## 6.2. Credential Issuance

* The credential issuer SHOULD be able to validate the wallet before issuing the credentials (RECOMMENDED)
* The credential issuer MUST authenticate the holder before issuing the credentials (REQUIRED)

{% hint style="info" %}
The issuer determines the method of authentication. Issuance processes can be performed both online and in person, with varying authentication methods for each.
{% endhint %}

* The credential wallet MUST be able to trust the credential issuer before requesting the credentials (REQUIRED)
* The credential wallet MUST be able to request credentials from a trusted credential issuer (REQUIRED)
* The credential wallet MUST be able to validate the credential before storing the credentials (REQUIRED)
* The credential wallet MUST enable cryptographic mechanisms to store the credentials (REQUIRED)
* The credential wallet MUST have trusted hardware providing a secure environment (tamper-proof) and storage for cryptographic assets such as keys (REQUIRED)

{% hint style="info" %}
As most Android devices don't have trusted hardware,  a trusted execution environment (TEE) can be used to store cryptographic assets such as keys.
{% endhint %}



## 6.3. Credential Statuses

* The credential issuer SHOULD NOT be able to learn details of the presentation when there is a status check of the credentials by a verifier (RECOMMENDED)

## 6.4. Credential Validity

* The wallet SHOULD verify the validity of the credential when accessed and show the status to the holder to take appropriate action (RECOMMENDED)

## 6.5. Presenting a Credential

* The credential verifier MUST be able to trust the credential wallet before requesting the presentations (REQUIRED)
* The credential verifier MUST be able to request a verifiable presentation (REQUIRED)
* The credential wallet MUST be able to validate the verifier before presenting a credential (REQUIRED)
* The credential wallet SHOULD capture the holder's consent before the credentials are presented to any verifier. (RECOMMENDED)
* The credential issuer SHOULD NOT be involved in the presentation process (RECOMMENDED)
* The credential wallet (with the holder's consent) SHOULD be able to present a selected subset of the data fields (claims) from a credential while other fields are not revealed to the verifier. (RECOMMENDED)
* The credential verifier MUST be able to receive the verifiable presentation from the wallet (REQUIRED)
* The credential verifier SHOULD be able to verify the presentations after receiving the presentation (RECOMMENDED)
* The credential wallet SHOULD enable the holder to present a pseudonym instead of their real identity when authenticating online or presenting credentials, except in cases where identification is mandatory. (RECOMMENDED)
* The credential verifier SHOULD NOT be able to link two presentations to the same holder (unless the holder's information is provided as part of the presentation) (RECOMMENDED)
* Two credential verifiers SHOULD NOT be able to link two presentation transactions to the same holder by sharing the received presentations (RECOMMENDED)
* After receiving a presentation the credential verifier SHOULD NOT be able to prove to any third party that the holder had presented the credentials to the verifier for identification purposes earlier. (RECOMMENDED)

{% hint style="info" %}
This requirement can be fulfilled only if the presentation is not signed but secured using the HMAC (Hash-based Message Authentication Code).
{% endhint %}

* The credential wallet backend SHOULD NOT be able to track where the credentials are being presented or learn details about the attributes of any transactions performed by the Holder (RECOMMENDED)
* The credential verifier SHOULD NOT be able to prove to any third party the credential's authenticity and the integrity of its attributes that the verifier had previously verified. (RECOMMENDED)

{% hint style="info" %}
This requirement would require using ECDH/HMAC to cryptographically protect the credential, as this process involves a public key provided by the Verifier. This requires an active, trusted component to create the credential on demand,
{% endhint %}

* The credential issuer and the credential verifier should not be able to link an issuance and presentation session to the same holder (unless the Holder provides sufficiently identifying information as part of their authentication to the Issuer and as part of the presented credential shared with the verifier) (RECOMMENDED)
