---
description: Terminology used within this specification.
---

# 3 Terminology

### **BLE (Bluetooth Low Energy)**

BLE is a wireless communication technology designed for short-range communication between devices. It is commonly used for connecting devices like smartphones and wearables.

### Container

A Container refers to the technical medium or environment in which Verifiable Credentials (VCs) are securely stored, managed, and accessed by the holder. It ensures data protection, interoperability, access control, and portability of credentials.

Examples of Containers:

* Mobile wallet apps (Android/iOS)
* Web-based wallets (browser-accessible)
* Cloud-based credential stores
* Hardware-based secure elements (e.g., smartcards)

### Content List

The Content List refers to the collection of Verifiable Credentials (VCs) and associated artifacts that are stored in or linked to the wallet [container](3-terminology.md#container). This includes both locally stored credentials and remotely referenced credentials (e.g., held in cloud wallets or [digital lockers](3-terminology.md#digital-locker)).

Examples in a Content List:

* Identity credentials (e.g., digital ID, driver’s license)
* Education credentials (e.g., diploma, transcript)
* Health credentials (e.g., vaccination record)
* Employment or financial records (e.g., payslips, tax certificates)

### **Credential**

A credential is a set of one or more claims made by the same entity. It may include an identifier to uniquely identify the credential, as well as metadata that describes properties of the credential itself such as the issuer, the expiry time, a representative image, etc.&#x20;

A verifiable credential is a set of claims and metadata that are tamper-resistant and that cryptographically prove who issued it.

{% hint style="info" %}
_This definition is borrowed from the_ [_W3C Verifiable Credentials Data Model specification_](https://www.w3.org/TR/vc-data-model-2.0/)_, but it is used more broadly, including other data models such as ISO/IEC 18013-5 mDL, SD-JWT-VC, etc._
{% endhint %}

### **Credential Holder**

The credential holder is an entity (person, device, or system) that possesses and manages digital credentials within a system or framework.

### **Credential Issuer**

A credential issuer is an entity responsible for the lifecycle management of credentials (e.g. issuance and revocation of credentials). This entity is typically trusted to verify and confirm the identity of the subject before issuing credentials.

### Credential Offer

A credential offer is a formal proposal from a Credential Issuer to a digital wallet user, providing detailed information about a specific verifiable credential and inviting the user to accept and receive it.

The primary purpose of a credential offer is to initiate the issuance process by providing the user with enough information to make an informed decision about whether to accept the credential. It ensures that the user is aware of what the credential represents, how it can be used, and what obligations or conditions are associated with it.

### **Credential Verifier**

The credential verifier is an entity responsible for checking the authenticity and validity of digital credentials presented by a credential holder.

### **Digital Credential Wallet**

A Digital Credential Wallet is a secure and user-controlled digital storage system designed to manage, store, and present digital credentials in a standardized and interoperable format. Digital credentials, also known as Verifiable Credentials (VCs), represent various types of qualifications, achievements, or attributes in a digital and tamper-evident form. The Digital Credential Wallet provides individuals with a convenient and privacy-centric means of carrying and presenting their verifiable information in various contexts.

### **Digital Locker**

In the context of digital credentials, a digital locker refers to a secure online repository for storing and managing digital copies of official documents, certificates, and records related to a user's identity, qualifications, or credentials. It allows individuals to securely store and share digital credentials while ensuring data privacy and integrity.

### **Digital Vault**

A digital vault is a secure storage system for safeguarding digital credentials, such as usernames, passwords, cryptographic keys, and other sensitive authentication information. It employs encryption and access controls to protect credentials from unauthorized access, theft, or misuse.

### eIDAS (Electronic Identification, Authentication, and Trust Services)

eIDAS is an EU regulation that sets standards for electronic identification and trust services for electronic transactions within the European Union’s single market. It aims to facilitate secure cross-border digital interactions for businesses, citizens, and public administrations. eIDAS provides a legal framework for the mutual recognition of electronic IDs (eIDs) and the use of trust services such as electronic signatures, electronic seals, timestamps, and website authentication to enable secure, reliable digital transactions.

### Electronic Attribute Attestation (EAA)

Electronic Attribute Attestation refers to the digital confirmation of specific attributes (such as age, professional status, qualifications, etc.) of an individual or entity by an authoritative source. It is part of the broader identity verification process where a trusted third party verifies and attests to the attributes digitally. The attestation can be used in electronic transactions to verify relevant attributes without revealing unnecessary personal information, improving privacy and security. These attestations can be stored in digital wallets and shared with service providers in a controlled manner, similar to [SSI](3-terminology.md#self-sovereign-identity-ssi) models.

### Holder Binding

User binding refers to the property that enables verifiers to trust that the individual presenting a credential is the same individual to whom the credential was originally issued.

### **ICAO (International Civil Aviation Organisation)**

ICAO is a specialized agency of the United Nations that sets international standards for aviation, including standards for machine-readable travel documents like passports.

### **ISO mDL (ISO Mobile Driver's License)**

ISO mDL refers to a digital representation of a driver's license that conforms to international standards set by the International Organisation for Standardisation (ISO). The ISO mDL standard (ISO/IEC 18013-5) outlines specifications for the format, structure, security, and interoperability of mobile driver's licenses.

### **Low Tech Wallets**

A low-tech wallet refers to a physical storage device or medium that lacks sophisticated digital interfaces and advanced connectivity features. These wallets typically rely on simple mechanisms such as USB connections, embedded chips, or SIM cards for accessing and managing digital credentials.

Unlike high-tech digital wallets that may incorporate biometric authentication, NFC (Near Field Communication) capabilities or cloud-based storage, low-tech wallets offer a more straightforward and often offline approach to storing digital credentials. They prioritize simplicity and physical security over advanced digital features, providing users with a tangible means of securely storing and accessing their digital credentials without extensive reliance on complex technology.

### **NFC (Near Field Communication)**

NFC is a short-range wireless communication technology that enables devices to exchange data when placed close to each other. It is commonly used for contactless payments and data transfer.

### **OpenID4VC (OpenID for Verified Credentials)**

OpenID4VC is a protocol for exchanging verifiable credentials in a decentralized identity environment.

OpenID4VC supports three main use cases, i.e. Credential Issuance, Credential Presentation, and Pseudonymous User Authentication.

### **OpenID4VCI (OpenID for Verified Credentials Issuance)**

Defines an API and corresponding OAuth-based authorization mechanisms for issuance of Verifiable Credentials.

### **OpenID Connect**

OpenID Connect is an identity layer built on top of the OAuth 2.0 protocol. It provides a way for clients to authenticate users and obtain information about them.

### **OpenID4VP (OpenID for Verifiable Presentation)**

Defines a mechanism on top of OAuth 2.0 to allow the presentation of claims in the form of Verifiable Credentials as part of the protocol flow.

### **PII (Personally Identifiable Information)**

PII refers to any information that can be used to identify a specific individual, such as names, addresses, social security numbers, or biometric data.

### **Porting**

Porting of credentials from one wallet to another refers to the process of transferring stored credentials, such as payment cards, identification documents, or other types of personal information, from one digital wallet application or service to another.

### **Pseudonymity**

Pseudonymity refers to the use of a pseudonym (a fictitious name or identifier) instead of one's real name or identity, particularly in digital and online contexts. This allows individuals to interact, communicate, or perform transactions without revealing their true identities, thereby protecting their privacy and reducing the risk of identity theft or tracking.

Here, pseudonymity refers to the possibility of using a pseudonym when authenticating online or presenting credentials.

### **QR Code**

A QR code is a two-dimensional barcode that can store various types of information, such as website URLs, contact information, or other data. It is often used for easy and quick data exchange using a camera-equipped device.

### Repudiation

Repudiation (or "plausible deniability") refers to the property that allows an entity involved in an identification transaction to plausibly deny to a third party (i.e., a party not involved in the transaction) its participation in the transaction after its completion or the provision of certain data. Although "repudiation" typically denotes a single act of dispute, it is commonly used to describe the general ability to deny transactions. Importantly, this ability to deny the transaction to third parties does not affect the reliability of the transaction for the Verifier involved.

{% hint style="info" %}
_This definition is borrowed from the_ [_Architecture Proposal for the German eIDAS Implementation_](https://bmi.usercontent.opencode.de/eudi-wallet/eidas-2.0-architekturkonzept/#architecture-proposal-for-the-german-eidas-implementation)_._&#x20;
{% endhint %}

### **Selective Disclosure**

Selective disclosure refers to sharing only specific information or attributes from a larger set of data or credentials, rather than revealing the entire set. It allows individuals to control and limit the information they share based on the context or requirements of a particular interaction or transaction.&#x20;

Selective disclosure enhances privacy and security by minimizing the exposure of sensitive data while still providing the necessary information to fulfill a given purpose or request.

### **SD-JWT VC**

SD-JWT-based Verifiable Credential is a verifiable credential encoded using the Issuance format defined in \[[I-D.ietf-oauth-selective-disclosure-jwt](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-selective-disclosure-jwt-05)]. It may or may not contain selectively disclosable claims.\
\
For details check, the draft [SD-JWT VC spec](https://datatracker.ietf.org/doc/html/draft-terbu-oauth-sd-jwt-vc).&#x20;

### Self-Sovereign Identity (SSI)

Self-Sovereign Identity (SSI) is a decentralized identity model where individuals fully own, manage, and control their digital identity without relying on centralized institutions or third parties. SSI allows users to store their personal information (credentials) in a secure digital wallet and selectively share it with service providers. It leverages blockchain or distributed ledger technology to ensure trust, privacy, and security in verifying the authenticity of identity information.

### Unlinkability

Unlinkability refers to the property that enables not to distinguish whether two transactions are related to the same user or not.

### Unobservability

Unobservability refers to the property where an adversary cannot discern any useful information about a communication or transaction. This ensures that sensitive data, such as message content, sender or receiver identity, or any other relevant information, remains hidden from unauthorized parties. In this context, neither Wallet Providers nor Issuers shall be able to track where a user uses their credentials or learn details concerning the attributes provided.

### **Verifiable Credentials (VCs)**

Verifiable credentials are digital statements that attest to the truth of certain claims. They are issued, held, and presented in a secure and privacy-preserving manner.

### **Verifiable Presentations (VPs)**

Verifiable presentations involve the secure and privacy-preserving presentation of verifiable credentials to third parties for verification.

### **W3C VC**

W3C VC stands for "W3C Verifiable Credentials." Verifiable Credentials (VCs) are a standardized format for digitally representing credentials, such as academic degrees, professional certifications, or government-issued IDs, in a way that is cryptographically secure, privacy-preserving, and interoperable across different systems and platforms.&#x20;

Developed by the World Wide Web Consortium (W3C), the standard defines the structure and semantics of verifiable credentials, as well as protocols and mechanisms for issuing, presenting, and verifying them. W3C VC aims to provide a foundation for trusted and decentralized digital identity systems, enabling individuals to own, control, and selectively disclose their credentials without relying on central authorities or intermediaries.\
\
For details visit check [W3C VC Data Model](https://www.w3.org/TR/vc-data-model/).
