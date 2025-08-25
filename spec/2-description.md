---
description: This section provides context for this Building Block.
---

# 2 Description

{% hint style="info" %}
At this stage, the definition of Wallet Building Block is focused on Digital Credential Wallets.
{% endhint %}

{% hint style="info" %}
GovStack Technical Specifications are open to multiple internationally common regulations. They do not aim for compliance to a specific regulation and allow for the freedom of local regulatory sovereignty.

Accordingly we do not within this Wallet Specification align to or preclude a particular regulatory or legal framework.

Therefore we recognise this seperation of technical and regulatory requirements by implication means that an implementor will need to be aware of the need appropriate regulatory capabilities and requirements and consider these with our technical requirements at the point of implementation.
{% endhint %}

Wallet as a term can mean many things depending on your background and context. However with GovStack we have chosen to use Wallet in its widest context, as a **Container** with **Content**.&#x20;

Therefore the total scope and focus of the Wallet Building Block (BB) is to provide specifications which support multiple forms of Containers and Contents, we have chosen this abstraction to ensure that the Building Block remains inclusive of different formats of Wallets.

We expect this specification to be enhanced both with precise guidelines for sector specific (such as Social Protection, Education, Health, Agriculture etc.) applications; standards guidance/mappings and different use-cases to be supported within the wallet, over time.

At this time however we start by focusing on **Wallets for Digital Credentials**. So although this Building Block could, be considered at this stage a Digital Credentials Wallet specification, the correct construct to read this document is as a Wallet Building Block able to support the storage and exchange of decentralised verifiable digital information which is currently focused on Digital Credentials.

As can be seen we aim to support different forms of media, so where as at the moment the specifications may include items that indicate a specific form (e.g. mobile wallets), other forms will be considered in future scope.

<figure>
  <picture>
    <source srcset=".gitbook/assets/wallet-abstraction-DARKMODE (3).png" media="(prefers-color-scheme: dark)"><img src=".gitbook/assets/wallet-abstraction (1).png" alt="">
  </picture>
  <figcaption><p>The Wallet Abstraction</p></figcaption>
</figure>

A Digital Credential Wallet is a specialized digital wallet designed to securely store, manage, and present digital credentials, also known as **Verifiable Credentials (VCs)**. These credentials represent a user's qualifications, achievements, or attributes in a digital form, such as educational qualifications, professional certifications, or government-issued IDs. Unlike physical credentials, which are prone to loss or forgery, digital credentials are stored and presented electronically, offering enhanced security and convenience.

Since there exist a number of Verifiable Credential standards, the Wallet abstraction defined in this specification is designed to provide a unified interface for managing, storing, and presenting digital credentials, regardless of the underlying standard used to issue them. By decoupling the Wallet’s functionality from any single credential format, implementers can support multiple existing and emerging standards, such as W3C Verifiable Credentials (WCVC), IETF Selective Disclosure JWT (SD-JWT), ISO/IEC 18013-5 Mobile Driving License (mDL), or ICAO Digital Travel Credentials (DTC) —which we list as examples in [section 7](7-data-structures.md) of this specification— allowing them to build wallets that support a diverse array credentials, while still benefiting from a consistent and cohesive Wallet experience.

With that understanding and focus let's look at the Digital Credential Wallet.

## Digital Credential Wallet <a href="#digital-credential-wallet" id="digital-credential-wallet"></a>

### Issuer-Holder-Verifier Model

Digital Credential Wallets play a crucial role in advancing the Issuer-Holder-Verifier model by providing efficiency, security, interoperability, privacy, and innovation. They streamline the processes of issuing, storing, and presenting credentials, making these tasks more convenient for both issuers and holders. Cryptographic signatures ensure the integrity of credentials, while biometric binding enhances security, offering a robust and trustworthy means of credential management.

<figure>
  <img src=".gitbook/assets/Wallet Building Block-Page-7.png" alt="" width="563">
  <figcaption>Issuer-Holder-Verifier Model</figcaption>
</figure>

The Issuer-Holder-Verifier model further enhances privacy by allowing users to share only the necessary information with verifiers, minimizing data exposure. Additionally, this model supports scalability by enabling a decentralized and interoperable framework that can accommodate an increasing number of credentials and participants across various sectors.

### Key Characteristics of a Digital Credential Wallet

* **Secure Storage of Verifiable Credentials**: The primary function of a Digital Credential Wallet is to store and manage Verifiable Credentials issued by trusted entities. These credentials can range from educational and professional certifications to government-issued IDs and health records.
* **User Control and Privacy**: Users have full control over their digital credentials, deciding when and how to share them. This empowers individuals to present only the specific credentials needed for verification, without exposing unnecessary personal information, thereby enhancing privacy.
* **Presentation and Verification**: Digital Credential Wallets allow users to present their credentials electronically, either online or in person. For instance, a user can share their educational credentials when applying to a university or present their digital ID to a traffic officer for age verification. Verifiers can independently authenticate these credentials, ensuring their validity.
* **Interoperability**: These wallets are designed to be interoperable with various issuers and verifiers, enabling seamless operation across different systems. They support multiple standards to ensure compatibility with diverse platforms and services.
* **Privacy and Security**: Digital Credential Wallets prioritize the protection of users' credential information. They utilize advanced cryptographic techniques and secure storage mechanisms to safeguard sensitive data, ensuring that credentials remain tamper-proof and trustworthy.
* **Multi-Purpose Functionality**: Beyond ID, educational, and professional credentials, Digital Credential Wallets can manage other types of verifiable information, such as health records, access permissions, travel documents, and specific skill certifications.
* **Support for Multiple Wallet Types**: The specification allows for the creation of different wallet types, including cloud-based, web, and mobile wallets. This flexibility enhances accessibility and caters to varying user preferences.

### Future of Digital Identity Management

Through their interoperability and standardization across platforms, Digital Credential Wallets enable seamless verification processes. Consent management features empower individuals to control their data, reducing administrative burdens and fostering trust. As a result, these wallets pave the way for innovative applications across various sectors, shaping the future of digital identity management and verification.

### The Wallet Building Block (Wallet BB)

The Wallet Building Block (Wallet BB) provides standardized specifications for building Digital Credential Wallets. This building block aims to streamline and simplify the issuance, verification, storage, and retrieval of Verifiable Credentials in a decentralized and privacy-centric manner, ensuring that digital credentialing is secure, efficient, and scalable.
