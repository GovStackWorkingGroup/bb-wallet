---
description: >-
  Key Digital Functionalities describe the core (required) functions that this
  Building Block must be able to perform.
---

# 4 Key Digital Functionalities

## 4.1. Credential Discovery <a href="#id-1.1.-importing-credentials-into-wallet" id="id-1.1.-importing-credentials-into-wallet"></a>

A wallet holder who intends to receive credentials from an issuer should be able to get relevant information on how to obtain the credentials, so that, the process of credential issuance is convenient and secure.

## 4.2. Credential Issuance <a href="#id-1.1.-importing-credentials-into-wallet" id="id-1.1.-importing-credentials-into-wallet"></a>

An Issuer should be able to issue digitally verifiable credentials to a trusted Wallet.

Key considerations during credential issuance:

* The Issuer should trust the wallet before sharing the credentials
* The Issuer should verify the holder's details before issuing credentials
* The wallet should validate the issuer's details before requesting the credentials
* The wallet should validate the received credentials before storing the credentials

## 4.3. Credential Status Management

The status of a credential is dynamic and is governed by the issuer or the owner of the credential.

* The Issuer should be able to change the status of the credentials to revoked or suspended
* The Issuer should provide a privacy-preserving way to check the status so that the Verifier can check if the credential is suspended or revoked

## 4.4. Credential Validity

The wallet and the verifier should be able to verify the validity of the credentials. Validity of credentials means, that&#x20;

* The credential signature is verified
* The credential has not expired or revoked
* A trusted issuer issued the credential

## 4.5. Presenting a Credential

The wallet should be able to present a credential to a Verifier upon receiving a request from the Verifier.

Key considerations while sharing a presentation:

* The wallet should trust the verifier before sharing the credentials
* The wallet should authenticate the holder before sharing the credentials
* The wallet should collect the consent of the holder before sharing the presentation
* The wallet should generate a fresh presentation for every request and every presentation should be bound to the transaction and the verifier.

## 4.6. Other features

### 4.6.1. Portability

The wallet should be able to provide a mechanism for the holder to port credentials from one device to another (when the credentials are locally stored in a device).

While doing so, the credentials need to be bound in the new device, hence, the wallet should provide a mechanism to cryptographically bind the credentials to the holder in the new device.

### 4.6.2. Transaction logs

The wallet should maintain a comprehensive log displaying details on various actions performed on the credentials in the wallet with timestamps. Some of the key events in the wallet are,

* Downloading a credential in the wallet
* Sharing a credential with a verifier
* Removing a credential from the wallet

### 4.6.3. Handling revoked and expired credentials

The wallet should be able to identify expired and revoked credentials and promptly notify the holder to take appropriate actions.

### 4.6.4. Removing a credential from the wallet

The holder should be able to remove a credential from the wallet.

### **4.6.5. Complaint Submission to Supervisory Body**

The wallet must provide a mechanism for users to submit complaints about a verifier to the respective supervisory body.

### **4.6.6. Data Deletion Request**

The wallet should allow the holder to request the verifier to delete the previously shared credentials.

