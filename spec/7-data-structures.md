---
description: >-
  This section provides information on the core data structures/data models that
  are used by this Building Block.
---

# 7 Data Structures

## 7.1. Credential Formats

The specifications should support credentials of any format, including, but not limited to,&#x20;

* SD-JWT VC (Selective Disclosure JWT Verifiable Credentials) \[[I-D.ietf-oauth-sd-jwt-vc](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-sd-jwt-vc-01)],&#x20;
* mDL (ISO mDoc Mobile Driving License) \[[ISO 18013-5](https://www.iso.org/standard/69084.html)], and&#x20;
* VC-DM (W3C Verifiable Credential Data Model) \[[VC\_DATA](https://www.w3.org/TR/vc-data-model-2.0/)].

### 7.1.1. W3C Verifiable Credential Data Model

Verifiable credentials are used to express properties of one or more subjects and properties of the credential itself. The following properties are defined in this specification for a verifiable credential:

<table><thead><tr><th width="192">Attribute</th><th>Description</th></tr></thead><tbody><tr><td>@context <mark style="color:red;">*</mark></td><td>The <code>@context</code> property is a fundamental aspect that ensures the credentials are interpretable and understandable across different systems. It is used to define the terms and vocabulary employed in the credential, enabling consistent data interpretation.</td></tr><tr><td>id <mark style="color:red;">*</mark></td><td><p>The <code>id</code> property in Verifiable Credentials (VC) expresses a unique identifier for a specific entity or object. This identifier is used by others to refer to the specific entity when making statements or assertions about it.</p><p>Examples of <code>id</code> values include, </p><ul><li>UUIDs (<code>urn:uuid:0c07c1ce-57cb-41af-bef2-1b932b986873</code>), </li><li>HTTP URLs (<code>https://id.example/things#123</code>), and </li><li>DIDs (<code>did:example:1234abcd</code>)</li></ul></td></tr><tr><td>type <mark style="color:red;">*</mark></td><td>The <code>type</code> property specifies the nature or category of the verifiable credential or verifiable presentation. It helps in understanding what kind of information or assertions the credential contains.<br><br>The <code>type</code> property can include multiple values, allowing a credential or presentation to be associated with more than one type. This is useful for credentials that may belong to multiple categories.</td></tr><tr><td>name</td><td>The <code>name</code> property offers a simple, readable name or title for the credential or presentation, making it easier for users to recognize and understand its content at a glance.</td></tr><tr><td>description</td><td>The <code>description</code> property gives a textual explanation that describes the content, purpose, or significance of the credential or presentation.</td></tr><tr><td>issuer <mark style="color:red;">*</mark></td><td>The <code>issuer</code> property specifies a unique identifier, typically a URL or a <a href="https://www.w3.org/TR/did-core/">Decentralized Identifier (DID)</a>, that represents the entity (e.g., an organization, institution, or individual) responsible for issuing the credential.</td></tr><tr><td>validFrom <mark style="color:red;">*</mark></td><td>The <code>validFrom</code> property indicates the exact date and time when the credential becomes valid. It is represented in the ISO 8601 date-time format.</td></tr><tr><td>validUntil <mark style="color:red;">*</mark></td><td>The <code>validUntil</code> property indicates the exact date and time when the credential ceases to be valid. It is represented in the ISO 8601 date-time format.</td></tr><tr><td>credentialStatus <mark style="color:red;">*</mark></td><td>The <code>credentialStatus</code> property specifies a URL or a JSON object that provides information about the status of the credential. It is used to indicate if the credential has been revoked, suspended, or has any other status that impacts its validity.<br><br>This property allows verifiers to dynamically check the current status of the credential by querying the provided URL or examining the JSON object.</td></tr><tr><td>credentialSchema <mark style="color:red;">*</mark></td><td>The <code>credentialSchema</code> property provides a reference to a schema that defines the structure, required fields, and validation rules for the credential.<br><br>This property allows verifiers to validate the credential against the specified schema to ensure it meets the expected format and requirements.</td></tr><tr><td>credentialSubject <mark style="color:red;">*</mark></td><td>The <code>credentialSubject</code> property identifies and describes the entity (e.g., a person, organization, or thing) that is the subject of the credential. It includes the claims or assertions made about this entity.<br><br>This property contains the claims, attributes, or statements that the credential makes about the subject. These can include various types of information, such as names, achievements, qualifications, or affiliations.</td></tr></tbody></table>

{% hint style="info" %}
The above specification details are taken from [VC Data Model 2.0](https://www.w3.org/TR/vc-data-model-2.0/#contexts), for more details go through the specifications [here](https://www.w3.org/TR/vc-data-model-2.0/#contexts).

In W3C VC Data Model supports extension mechanisms to extend additional properties as defined in the [Extensibility](https://www.w3.org/TR/vc-data-model-2.0/#extensibility) section of the [VC Data Model 2.0](https://www.w3.org/TR/vc-data-model-2.0/#contexts) specification.
{% endhint %}

<details>

<summary>Example of W3C Verifiable Credentials</summary>

<pre class="language-json"><code class="lang-json"><strong>{
</strong>  "@context": [
    "https://www.w3.org/2018/credentials/v1",
    "https://www.w3.org/2018/credentials/examples/v1"
  ],
  "id": "http://example.edu/credentials/3732",
  "type": ["VerifiableCredential", "AlumniCredential"],
  "issuer": "https://example.edu/issuers/14",
  "issuanceDate": "2020-03-10T04:24:12.164Z",
  "validFrom": "2020-03-10T04:24:12Z",
  "validUntil": "2025-03-10T04:24:12Z",
  "credentialStatus": {
    "id": "https://example.edu/status/3732",
    "type": "CredentialStatusList2020"
  },
  "credentialSchema": {
    "id": "https://example.edu/schemas/AlumniCredentialSchema.json",
    "type": "JsonSchemaValidator2018"
  },
  "credentialSubject": {
    "id": "did:example:123456789",
    "alumniOf": "Example University",
    "name": "Jane Doe"
  },
  "name": "Example University Alumni Credential",
  "description": "This credential certifies that the holder is an alumnus of Example University, having successfully completed the required courses and fulfilled all the necessary criteria for graduation.",
  "proof": {
    "type": "RsaSignature2018",
    "created": "2020-03-10T04:24:12Z",
    "proofPurpose": "assertionMethod",
    "verificationMethod": "https://example.edu/issuers/keys/1",
    "jws": "eyJhbGciOiJSUzI1NiIsImtpZCI6IjE2In0...&#x3C;signature>"
  }
}
</code></pre>

</details>

### 7.1.2. SD-JWT-based Verifiable Credentials

SD-JWT VCs may use any claim registered in the "JSON Web Token Claims" registry. If present, the following registered JWT claims must be included in the SD-JWT:

<table><thead><tr><th width="181">Attribute</th><th>Description</th></tr></thead><tbody><tr><td>iss <mark style="color:red;">*</mark></td><td>The Issuer of the Verifiable Credential. The value of <code>iss</code> MUST be a URI.</td></tr><tr><td>iat <mark style="color:red;">*</mark></td><td>The time of issuance of the Verifiable Credential.</td></tr><tr><td>nbf</td><td>The time before which the Verifiable Credential MUST NOT be accepted before validating.</td></tr><tr><td>exp</td><td>The expiry time of the Verifiable Credential after which the Verifiable Credential is no longer valid.</td></tr><tr><td>cnf</td><td>Required when Cryptographic Key Binding is to be supported and contains the confirmation method. It is recommended that this contains a JWK. For Cryptographic Key Binding, the Key Binding JWT in the Combined Format for Presentation must be signed by the key identified in this claim.</td></tr><tr><td>vct <mark style="color:red;">*</mark></td><td><p>The type of the Verifiable Credential, </p><p>e.g., <code>https://credentials.example.com/identity_credential</code></p></td></tr><tr><td>status</td><td>The information on how to read the status of the Verifiable Credential.</td></tr><tr><td>sub</td><td>The identifier of the Subject of the Verifiable Credential. The Issuer may use it to provide the Subject identifier known by the Issuer. There is no requirement for a binding to exist between <code>sub</code> and <code>cnf</code> claims.</td></tr></tbody></table>

{% hint style="info" %}
The above specification details are taken from [I-D.ietf-oauth-sd-jwt-vc](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-sd-jwt-vc-01), for more details go through the specifications [here](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-sd-jwt-vc-01).
{% endhint %}

<details>

<summary>Example of SD JWT Verifiable Credentials</summary>

```json
```

</details>

### 7.1.3. ISO mDoc Mobile Driving License

Below are a few of the core elements in the ISO/IEC DIS 18013-5 (mDL) data model.

<table><thead><tr><th width="181">Attribute</th><th width="574">Description</th></tr></thead><tbody><tr><td>@context</td><td>Defines the JSON-LD context, providing the necessary vocabulary for interpreting the data.</td></tr><tr><td>id</td><td>A unique identifier for the verifiable credential.</td></tr><tr><td>type</td><td>Specifies the types of the credential, including "VerifiableCredential" and "mDL".</td></tr><tr><td>issuer</td><td>The entity that issued the credential, represented as a URL.</td></tr><tr><td>issuanceDate</td><td>The date when the credential was issued.</td></tr><tr><td>expirationDate</td><td>The date when the credential expires.</td></tr><tr><td>credentialSubject</td><td><p>The subject of the credential, typically including details about the holder and their driving privileges.</p><ul><li><strong>id</strong>: A unique identifier for the credential subject, typically a DID (Decentralized Identifier).</li><li><strong>documentInfo</strong>: Information about the document itself, such as type, issuing authority, issue and expiry dates, and document number.</li><li><strong>holderInfo</strong>: Personal details of the document holder, including name, birth date, address, gender, and nationality.</li><li><strong>drivingPrivileges</strong>: Details about the driving privileges granted, including categories, issue and expiry dates, and any restrictions.</li><li><strong>biometricData</strong>: Optional biometric data such as facial images and fingerprints, encoded in base64.</li></ul></td></tr><tr><td>proof</td><td><p>Cryptographic proof to ensure the integrity and authenticity of the credential.</p><ul><li><strong>type</strong>: The type of cryptographic signature used.</li><li><strong>created</strong>: The date and time when the proof was created.</li><li><strong>proofPurpose</strong>: The intended use of the proof, such as "assertionMethod".</li><li><strong>verificationMethod</strong>: The method used to verify the proof, typically a URL to the issuer's public key.</li><li><strong>jws</strong>: The JSON Web Signature, which includes the actual cryptographic signature.</li></ul></td></tr></tbody></table>

<details>

<summary>ISO/IEC DIS 18013-5 mDL Verifiable Credentials as JSON LD</summary>

```json
{
  "@context": [
    "https://www.w3.org/2018/credentials/v1",
    "https://w3c-ccg.github.io/ld-cryptosuite-registry/contexts/ecdsa-secp256k1-recovery2020-v2.json",
    "https://w3c-ccg.github.io/vc-json-schemas/context/v1"
  ],
  "id": "urn:uuid:12345678-1234-5678-1234-567812345678",
  "type": ["VerifiableCredential", "mDL"],
  "issuer": "https://issuer.example.com/credentials/123",
  "issuanceDate": "2024-01-01T19:23:24Z",
  "expirationDate": "2029-01-01T19:23:24Z",
  "credentialSubject": {
    "id": "did:example:abcdef123456",
    "documentInfo": {
      "documentType": "drivingLicense",
      "issuingAuthority": "Department of Motor Vehicles",
      "issueDate": "2024-01-01",
      "expiryDate": "2029-01-01",
      "documentNumber": "D1234567"
    },
    "holderInfo": {
      "fullName": "John Doe",
      "dateOfBirth": "1990-01-01",
      "placeOfBirth": "Springfield",
      "address": {
        "street": "123 Elm Street",
        "city": "Springfield",
        "state": "IL",
        "postalCode": "62701",
        "country": "USA"
      },
      "gender": "Male",
      "nationality": "American"
    },
    "drivingPrivileges": [
      {
        "category": "B",
        "issueDate": "2024-01-01",
        "expiryDate": "2029-01-01",
        "restrictions": ["correctiveLenses"]
      }
    ],
    "biometricData": {
      "facialImage": "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD...",
      "fingerprints": ["data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAA..."]
    }
  },
  "proof": {
    "type": "EcdsaSecp256k1Signature2020",
    "created": "2024-01-01T19:23:24Z",
    "proofPurpose": "assertionMethod",
    "verificationMethod": "https://issuer.example.com/keys/1",
    "jws": "eyJhbGciOiJFZERTQSJ9..."
  }
}

```

</details>

{% hint style="info" %}
The above specification details are taken from [ISO/IEC DIS 18013-5 (mDL)](https://www.iso.org/standard/69084.html), for more details go through the specifications [here](https://www.iso.org/standard/69084.html).
{% endhint %}

## 7.2. Credential Schema

Every credential should provide a mechanism to share credential schema that extends the core components of a verifiable credential.&#x20;

The core components of a verifiable credential are,

* **Credential metadata**\
  This includes essential information about the credential, such as its type, issuer, issuance date, expiration date, and any other attributes that describe the context and purpose of the credential.
* **Credential claims**\
  These are the specific pieces of information being asserted by the credential, such as the subject’s name, date of birth, or other relevant attributes. Claims are the core data that the credential represents.
* **Credential proof**\
  The cryptographic evidence ensures the authenticity and integrity of the credential. This component verifies that the claims within the credential are valid and that it was issued by a trusted entity.

The credential schema enables flexibility by defining how additional attributes or custom claims can be structured while building on these core components.

## 7.3. Key API Definition

### 7.3.1. Credential Offer Definition

The Credential Issuer sends a Credential Offer using an HTTP GET request or an HTTP redirect to the Wallet's [Credential Offer Endpoint](8-service-apis.md#id-8.1.1.-credential-offer-endpoint).

The Credential Offer object, which is a JSON-encoded object with the Credential Offer parameters, can be sent by value or by reference.

The Credential Offer contains a single URI query parameter, either `credential_offer` or `credential_offer_uri`:

* `credential_offer`: Object with the Credential Offer parameters. This MUST NOT be present when the `credential_offer_uri` parameter is present.
* `credential_offer_uri`: String that is a URL using the HTTPS scheme referencing a resource containing a JSON object with the Credential Offer parameters. This MUST NOT be present when the `credential_offer` parameter is present.

During implementation, the Credential Issuer MAY render a QR code containing the Credential Offer that can be scanned by the End-User using a Wallet, or a link that the End-User can click.

Here the parameters for the JSON-encoded Credential Offer object are defined.

<details>

<summary>Parametrs for the JSON-encoded Credential Offer object</summary>

* **credential\_issuer**<mark style="color:red;">\*</mark>\
  The URL of the Credential Issuer, from which the Wallet is requested to obtain one or more Credentials. The Wallet uses it to obtain the Credential Issuer's Metadata.\
  \
  Here, the Credential Issuer is identified by a case-sensitive URL using the HTTPS scheme that contains scheme, host, and, optionally, port number and path components, but no query or fragment components.

- **credential\_configuration\_ids**<mark style="color:red;">\*</mark>\
  An array of unique strings that each identify one of the keys in the name/value pairs stored in the `credential_configurations_supported` Credential Issuer metadata. The Wallet uses these string values to obtain the respective object that contains information about the Credential being offered. For example, these string values can be used to obtain scope values to be used in the Authorization Request.

* **grants**\
  Object indicating to the Wallet the Grant Types the Credential Issuer's Authorization Server is prepared to process for this Credential Offer. Every grant is represented by a name/value pair. The name is the Grant Type identifier; the value is an object that contains parameters either determining the way the Wallet MUST use the particular grant and/or parameters the Wallet MUST send with the respective request(s). If grants are not present or are empty, the Wallet MUST determine the Grant Types the Credential Issuer's Authorization Server supports using the respective metadata. When multiple grants are present, it is at the Wallet's discretion which one to use.
  * **urn:ietf:params:oauth:grant-type:pre-authorized\_code** \[object]\
    GrantType for Pre-authorize Code Flow.
    * **pre-authorized\_code**<mark style="color:red;">\*</mark> \[string]\
      The code representing the Credential Issuer's authorization for the Wallet to obtain Credentials of a certain type. This code MUST be short lived and single use. If the Wallet decides to use the Pre-Authorized Code Flow, this parameter value MUST be included in the subsequent Token Request with the Pre-Authorized Code Flow.
    * **tx\_code** \[object]\
      Object specifying whether the Authorization Server expects presentation of a Transaction Code by the End-User along with the Token Request in a Pre-Authorized Code Flow. If the Authorization Server does not expect a Transaction Code, this object is absent; this is the default. The Transaction Code is intended to bind the Pre-Authorized Code to a certain transaction to prevent replay of this code by an attacker that, for example, scanned the QR code while standing behind the legitimate end user. It is RECOMMENDED to send the Transaction Code via a separate channel. If the Wallet decides to use the Pre-Authorized Code Flow, the Transaction Code value MUST be sent in the `tx_code` parameter with the respective Token Request. If no length or description is given, this object may be empty, indicating that a Transaction Code is required.
      * **length** \[integer]\
        Integer specifying the length of the Transaction Code. This helps the Wallet to render the input screen and improve the user experience.
      * **input\_mode** \[string]\
        A string specifying the input character set. Possible values are numeric (only digits) and text (any characters). The default is numeric.
      * **description** \[string]\
        A string containing guidance for the Holder of the Wallet on how to obtain the Transaction Code, e.g., describing over which communication channel it is delivered.
  * **authorization\_code** \[object]\
    GrantType for Authorization Code Flow.
    * **issuer\_state** \[string]\
      String value created by the Credential Issuer and opaque to the Wallet that is used to bind the subsequent Authorization Request with the Credential Issuer to a context set up during previous steps. If the Wallet decides to use the Authorization Code Flow and receives a value for this parameter, it MUST include it in the subsequent Authorization Request to the Credential Issuer as the `issuer_state` parameter value.
    * **authorization\_server** \[string]\
      A string that the Wallet can use to identify the Authorization Server to use with this grant type when `authorization_servers` parameter in the Credential Issuer metadata has multiple entries. It MUST NOT be used otherwise. The value of this parameter MUST match with one of the values in the `authorization_servers` array obtained from the Credential Issuer metadata.

</details>

Below are a few non-normative examples of a Credential Offer Object.

{% tabs %}
{% tab title="Authorized Code Flow" %}
```json
{
  "credential_issuer": "https://credential-issuer.example.com",
  "credential_configuration_ids": [
    "UniversityDegreeCredential"
  ],
  "grants": {
    "authorization_code": {
      "issuer_state": "eyJhbGciOiJSU0Et...FYUaBy"
    }
  }
}
```
{% endtab %}

{% tab title="Pre-authorized Code Flow" %}
```json
{
  "credential_issuer": "https://credential-issuer.example.com",
  "credential_configuration_ids": [
    "UniversityDegree_LDP_VC"
  ],
  "grants": {
    "urn:ietf:params:oauth:grant-type:pre-authorized_code": {
      "pre-authorized_code": "adhjhdjajkdkhjhdj",
      "tx_code": {}
    }
  }
}
```
{% endtab %}
{% endtabs %}

{% hint style="info" %}
The above specification details are taken from [OpenID4VCI - Draft 13](https://openid.net/specs/openid-4-verifiable-credential-issuance-1_0-ID1.html) specifications, for more details go through the specifications [here](https://openid.net/specs/openid-4-verifiable-credential-issuance-1_0-ID1.html#name-credential-offer).
{% endhint %}

### 7.3.2. Credential Issuer Metadata

The `credential_configurations_supported` object in the response of the [Credential Issuer Metadata Endpoint](8-service-apis.md#id-8.1.2.-credential-issuer-metadata) describes the specifics of the Credential that the Credential Issuer supports the issuance of.

This object contains a list of name/value pairs, where each name is a unique identifier of the supported Credential being described.

This identifier is used in the Credential Offer to communicate to the Wallet which Credential is being offered while the value is an object that contains metadata about a specific Credential.

Here, the parameters of the credential metadata object are defined.

<details>

<summary>Parameters of the credential metadata object</summary>

* **format** (string)\
  A JSON string identifying the format of this Credential, i.e., `jwt_vc_json` or `ldp_vc`. Depending on the format value, the object contains further elements defining the type and (optionally) particular claims the Credential MAY contain and information about how to display the Credential.

- **scope** (string)\
  A JSON string identifying the scope value that this Credential Issuer supports for this particular Credential. The value can be the same across multiple `credential_configurations_supported` objects. The Authorization Server MUST be able to uniquely identify the Credential Issuer based on the scope value. The Wallet can use this value in the [Authorization Request](https://ooru.stoplight.io/docs/wallet/branches/main/wallet-bb.yaml/paths/~1authorize/get). Scope values in this Credential Issuer metadata MAY duplicate those in the `scopes_supported` parameter of the Authorization Server.

* **cryptographic\_binding\_methods\_supported** (array\[string])\
  An array of case-sensitive strings that identify the representation of the cryptographic key material that the issued Credential is bound to. Support for keys in JWK format [RFC7517](https://www.rfc-editor.org/rfc/rfc7517.html) is indicated by the value `jwk`. Support for keys expressed as a COSE Key object [RFC8152](https://www.rfc-editor.org/rfc/rfc8152.html) (for example, used in [ISO.18013-5](https://www.iso.org/standard/69084.html)) is indicated by the value `cose_key`. When the Cryptographic Binding Method is a DID, valid values are a did: prefix followed by a method-name using a syntax as defined in Section 3.1 of [DID-Core](https://www.w3.org/TR/did-core/), but without a :and method-specific-id. For example, support for the DID method with a method-name "example" would be represented by did:example.

- **credential\_signing\_alg\_values\_supported** (array\[string])\
  Array of case sensitive strings that identify the algorithms that the Issuer uses to sign the issued Credential.

*   **proof\_types\_supported** (object)\
    An object that describes specifics of the key proof(s) that the Credential Issuer supports. This object contains a list of name/value pairs, where each name is a unique identifier of the supported proof type(s). A few of the valid values are defined below, while other values MAY be used. This identifier is also used by the Wallet in the [Credential Issuance Request](8-service-apis.md#id-8.2.-credential-issuance).

    \
    Below are a few `proof_type` supported for the `proof_type` property:

    * `jwt`: A JWT [RFC7519](https://www.rfc-editor.org/rfc/rfc7519.html) is used as proof of possession. When proof\_type is JWT, a proof object MUST include a JWT claim containing a JWT.
    * `cwt`: A CWT [RFC8392](https://www.rfc-editor.org/rfc/rfc8392.html) is used as proof of possession. When proof\_type is cwt, a proof object MUST include a cwt claim containing a CWT.
    * `ldp_vp`: A W3C Verifiable Presentation object signed using the Data Integrity Proof as defined in [VC\_DATA\_2.0](https://www.w3.org/TR/vc-data-model-2.0/) or [VC\_DATA](https://www.w3.org/TR/vc-data-model/), and where the proof of possession MUST be done per [VC\_Data\_Integrity](https://w3c.github.io/vc-data-integrity/). When `proof_type` is set to `ldp_vp`, the proof object MUST include a `ldp_vp` claim containing a [W3C Verifiable Presentation](https://www.w3.org/TR/vc-data-model-2.0/#presentations-0).\

    * **jwt** (object)&#x20;
      * **proof\_signing\_alg\_values\_supported**<mark style="color:red;">\*</mark> (array\[string])\
        An array of case-sensitive strings that identify the algorithms that the Issuer supports for this proof type. The Wallet uses one of them to sign the proof. Algorithm names used are determined by the key proof types.
    * **display** (array\[object])\
      An array of objects, where each object contains the display properties of the supported Credential for a certain language.\
      \
      Below is a non-exhaustive list of parameters that MAY be included.
      * **name**<mark style="color:red;">\*</mark> (string)\
        A string value of a display name for the Credential.
      * **locale** (string)\
        A string value that identifies the language of this object is represented as a language tag taken from values defined in BCP47 [RFC5646](https://www.rfc-editor.org/rfc/rfc5646.html). Multiple display objects MAY be included for separate languages. There MUST be only one object for each language identifier.
      * **logo** (object)\
        Object with information about the logo of the Credential.
        * **url**<mark style="color:red;">\*</mark> (string)\
          String value that contains a URI where the Wallet can obtain the logo of the Credential from the Credential Issuer. The Wallet needs to determine the scheme since the URI value could use `https: scheme`, `data: scheme`, etc.
        * **alt\_text** (string)\
          A string value of the alternative text for the logo image.
      * **description** (string)\
        A string value of a description of the Credential.
      * **background\_color** (string)\
        A string value of a background color of the Credential is represented as numerical color values defined in CSS Color Module Level 37 [CSS-Color](https://www.w3.org/TR/css-color-3/).
      * **background\_image** (object)\
        Object with information about the background image of the Credential.
        * **uri**<mark style="color:red;">\*</mark> (string)\
          String value that contains a URI where the Wallet can obtain the background image of the Credential from the Credential Issuer. The Wallet needs to determine the scheme since the URI value could use the `https: scheme`, `data: scheme`, etc.
      * **text\_color** (string)\
        A string value of a text color of the Credential is represented as numerical color values defined in CSS Color Module Level 37 [CSS-Color](https://www.w3.org/TR/css-color-3/).
    * **credential\_definition**<mark style="color:red;">\*</mark> (object)\
      An object containing a detailed description of the Credential type.
      * **type**<mark style="color:red;">\*</mark> (array\[string])\
        Array designating the types a certain Credential type supports, according to [VC\_DATA](https://www.w3.org/TR/vc-data-model/).
      * **credentialSubject** (object)\
        An object containing a list of name/value pairs, where each name identifies a claim offered in the Credential. The value can be another such object (nested data structures), or an array of such objects. To express the specifics about the claim, the most deeply nested value MAY be an object that includes the following parameters defined by this specification.
        * **attribute\_name** (object)
          * **mandatory** (boolean)\
            Boolean which, when set to `true`, indicates that the Credential Issuer will always include this claim in the issued Credential. If set to `false`, the claim is not included in the issued Credential if the wallet did not request the inclusion of the claim, and/or if the Credential Issuer chose to not include the claim. If the mandatory parameter is omitted, the default value is `false`.
          *   **value\_type** (string)

              A String value that determines the type of value of the claim. Valid values defined by this specification are string, number, and image media types such as image/jpeg as defined in [IANA media type registry for images](https://www.iana.org/assignments/media-types/media-types.xhtml#image). Other values MAY also be used.
          *   **display** (array\[object])

              Array of objects, where each object contains display properties of a certain claim in the Credential for a certain language.

              *   **name** (string)

                  String value of a display name for the claim.
              *   **locale** (string)

                  String value that identifies language of this object represented as language tag values defined in BCP47 [RFC5646](https://www.rfc-editor.org/rfc/rfc5646.html). There MUST be only one object for each language identifier.

</details>

Below are non-normative examples of the object containing the `credential_configurations_supported` parameter for various Credential Formats.

{% tabs %}
{% tab title="ISO mDL" %}
```json
{
  "credential_configurations_supported": {
    "org.iso.18013.5.1.mDL": {
      "format": "mso_mdoc",
      "doctype": "org.iso.18013.5.1.mDL",
      "cryptographic_binding_methods_supported": [
        "cose_key"
      ],
      "credential_signing_alg_values_supported": [
        "ES256",
        "ES384",
        "ES512"
      ],
      "display": [
        {
          "name": "Mobile Driving License",
          "locale": "en-US",
          "logo": {
            "uri": "https://state.example.org/public/mdl.png",
            "alt_text": "state mobile driving license"
          },
          "background_color": "#12107c",
          "text_color": "#FFFFFF"
        },
        {
          "name": "モバイル運転免許証",
          "locale": "ja-JP",
          "logo": {
            "uri": "https://state.example.org/public/mdl.png",
            "alt_text": "米国州発行のモバイル運転免許証"
          },
          "background_color": "#12107c",
          "text_color": "#FFFFFF"
        }
      ],
      "claims": {
        "org.iso.18013.5.1": {
          "given_name": {
            "display": [
              {
                "name": "Given Name",
                "locale": "en-US"
              },
              {
                "name": "名前",
                "locale": "ja-JP"
              }
            ]
          },
          "family_name": {
            "display": [
              {
                "name": "Surname",
                "locale": "en-US"
              }
            ]
          },
          "birth_date": {
            "mandatory": true
          }
        },
        "org.iso.18013.5.1.aamva": {
          "organ_donor": {}
        }
      }
    }
  }
}
```
{% endtab %}

{% tab title="IETF SD-JWT VC" %}
```
{
  "credential_configurations_supported": {
    "SD_JWT_VC_example_in_OpenID4VCI": {
      "format": "vc+sd-jwt",
      "scope": "SD_JWT_VC_example_in_OpenID4VCI",
      "cryptographic_binding_methods_supported": [
        "jwk"
      ],
      "credential_signing_alg_values_supported": [
        "ES256"
      ],
      "display": [
        {
          "name": "IdentityCredential",
          "logo": {
                    "uri": "https://university.example.edu/public/logo.png",
                    "alt_text": "a square logo of a university"
          },
          "locale": "en-US",
          "background_color": "#12107c",
          "text_color": "#FFFFFF"
        }
      ],
      "proof_types_supported": {
        "jwt": {
          "proof_signing_alg_values_supported": [
            "ES256"
          ]
        }
      },
      "vct": "SD_JWT_VC_example_in_OpenID4VCI",
      "claims": {
        "given_name": {
          "display": [
            {
              "name": "Given Name",
              "locale": "en-US"
            },
            {
              "name": "Vorname",
              "locale": "de-DE"
            }
          ]
        },
        "family_name": {
          "display": [
            {
              "name": "Surname",
              "locale": "en-US"
            },
            {
              "name": "Nachname",
              "locale": "de-DE"
            }
          ]
        },
        "email": {},
        "phone_number": {},
        "address": {
          "street_address": {},
          "locality": {},
          "region": {},
          "country": {}
        },
        "birthdate": {},
        "is_over_18": {},
        "is_over_21": {},
        "is_over_65": {}
      }
    }
  }
}
```
{% endtab %}
{% endtabs %}

{% hint style="info" %}
The above specification details are taken from [OpenID4VCI - Draft 13](https://openid.net/specs/openid-4-verifiable-credential-issuance-1_0-ID1.html) specifications, for more details go through the specifications [here](https://openid.net/specs/openid-4-verifiable-credential-issuance-1_0-ID1.html#name-credential-issuer-metadata).
{% endhint %}

### 7.3.3. Presentation Definition

A Presentation Definition is a structured object used to specify the proofs a Verifier needs from a Holder. These definitions guide the Verifier in determining how to interact with the Holder.

Key Components of Presentation Definitions:

* **Inputs**: These describe the forms and specifics of the required proofs.&#x20;
* **Selection Rules (optional)**: These provide flexibility, allowing Holders to use different types of proofs to satisfy a requirement.&#x20;

By setting clear Presentation Definitions, Verifiers can streamline the process of verifying credentials, while Holders are given more options to meet these verification requirements.

{% tabs %}
{% tab title="A Credential" %}
The following is a non-normative example of how `presentation_definition` parameter can simply be used to request the presentation of a Credential of a certain type:

```json
{
    "id": "vp token example",
    "input_descriptors": [
        {
            "id": "id card credential",
            "format": {
                "ldp_vc": {
                    "proof_type": [
                        "Ed25519Signature2018"
                    ]
                }
            },
            "constraints": {
                "fields": [
                    {
                        "path": [
                            "$.type"
                        ],
                        "filter": {
                            "type": "string",
                            "pattern": "IDCardCredential"
                        }
                    }
                ]
            }
        }
    ]
}
```
{% endtab %}

{% tab title="Selective Disclosure" %}
The following non-normative example shows how the Verifier can request selective disclosure or certain claims from a Credential of a particular type.

```json
{
    "id": "example with selective disclosure",
    "input_descriptors": [
        {
            "id": "ID card with constraints",
            "format": {
                "ldp_vc": {
                    "proof_type": [
                        "Ed25519Signature2018"
                    ]
                }
            },
            "constraints": {
                "limit_disclosure": "required",
                "fields": [
                    {
                        "path": [
                            "$.type"
                        ],
                        "filter": {
                            "type": "string",
                            "pattern": "IDCardCredential"
                        }
                    },
                    {
                        "path": [
                            "$.credentialSubject.given_name"
                        ]
                    },
                    {
                        "path": [
                            "$.credentialSubject.family_name"
                        ]
                    },
                    {
                        "path": [
                            "$.credentialSubject.birthdate"
                        ]
                    }
                ]
            }
        }
    ]
}
```
{% endtab %}

{% tab title="Multiple Credentials" %}
The following non-normative example shows how the Verifiers can also ask for alternative Verifiable Credentials being presented:

```json
{
    "id": "alternative credentials",
    "submission_requirements": [
        {
            "name": "Citizenship Information",
            "rule": "pick",
            "count": 1,
            "from": "A"
        }
    ],
    "input_descriptors": [
        {
            "id": "id card credential",
            "group": [
                "A"
            ],
            "format": {
                "ldp_vc": {
                    "proof_type": [
                        "Ed25519Signature2018"
                    ]
                }
            },
            "constraints": {
                "fields": [
                    {
                        "path": [
                            "$.type"
                        ],
                        "filter": {
                            "type": "string",
                            "pattern": "IDCardCredential"
                        }
                    }
                ]
            }
        },
        {
            "id": "passport credential",
            "format": {
                "jwt_vc_json": {
                    "alg": [
                        "RS256"
                    ]
                }
            },
            "group": [
                "A"
            ],
            "constraints": {
                "fields": [
                    {
                        "path": [
                            "$.vc.type"
                        ],
                        "filter": {
                            "type": "string",
                            "pattern": "PassportCredential"
                        }
                    }
                ]
            }
        }
    ]
}
```
{% endtab %}
{% endtabs %}

{% hint style="info" %}
The above specification details are taken from [OpenID4VP - Draft 18](https://openid.net/specs/openid-4-verifiable-presentations-1_0-ID2.html) specifications, for more details go through the specifications [here](https://openid.net/specs/openid-4-verifiable-presentations-1_0-ID2.html#name-presentation_definition-par).

Also, refer to the [DIF Presentation Exchange Definition](https://identity.foundation/presentation-exchange/spec/v2.1.1/).
{% endhint %}

### 7.3.4. VP Token

VP Token or Verifiable Presentation Token is a JSON string or JSON object that MUST contain a single Verifiable Presentation or an array of JSON Strings and JSON objects each of them containing a Verifiable Presentation.

Each Verifiable Presentation MUST be represented as a JSON string (that is a Base64url encoded value) or a JSON object depending on the format of the Verifiable Credential.

{% tabs %}
{% tab title="Single VP" %}
The following is a non-normative example of a VP Token containing a single Verifiable Presentation:

```json
{
    "@context": [
        "https://www.w3.org/2018/credentials/v1"
    ],
    "type": [
        "VerifiablePresentation"
    ],
    "verifiableCredential": [
        {
            "@context": [
                "https://www.w3.org/2018/credentials/v1",
                "https://www.w3.org/2018/credentials/examples/v1"
            ],
            "id": "https://example.com/credentials/1872",
            "type": [
                "VerifiableCredential",
                "IDCardCredential"
            ],
            "issuer": {
                "id": "did:example:issuer"
            },
            "issuanceDate": "2010-01-01T19:23:24Z",
            "credentialSubject": {
                "given_name": "Fredrik",
                "family_name": "Strömberg",
                "birthdate": "1949-01-22"
            },
            "proof": {
                "type": "Ed25519Signature2018",
                "created": "2021-03-19T15:30:15Z",
                "jws": "eyJhb...JQdBw",
                "proofPurpose": "assertionMethod",
                "verificationMethod": "did:example:issuer#keys-1"
            }
        }
    ],
    "id": "ebc6f1c2",
    "holder": "did:example:holder",
    "proof": {
        "type": "Ed25519Signature2018",
        "created": "2021-03-19T15:30:15Z",
        "challenge": "n-0S6_WzA2Mj",
        "domain": "https://client.example.org/cb",
        "jws": "eyJhbG...IAoDA",
        "proofPurpose": "authentication",
        "verificationMethod": "did:example:holder#key-1"
    }
}
```
{% endtab %}

{% tab title="Multiple VP" %}
The following is a non-normative example of a VP Token containing multiple Verifiable Presentations:

```json
[
    {
        "@context": [
            "https://www.w3.org/2018/credentials/v1"
        ],
        "type": [
            "VerifiablePresentation"
        ],
        "verifiableCredential": [
            {
                "@context": [
                    "https://www.w3.org/2018/credentials/v1",
                    "https://www.w3.org/2018/credentials/examples/v1"
                ],
                "id": "https://example.com/credentials/1872",
                "type": [
                    "VerifiableCredential",
                    "IDCardCredential"
                ],
                "issuer": {
                    "id": "did:example:issuer"
                },
                "issuanceDate": "2010-01-01T19:23:24Z",
                "credentialSubject": {
                    "given_name": "Fredrik",
                    "family_name": "Strömberg",
                    "birthdate": "1949-01-22"
                },
                "proof": {
                    "type": "Ed25519Signature2018",
                    "created": "2021-03-19T15:30:15Z",
                    "jws": "eyJhb...IAoDA",
                    "proofPurpose": "assertionMethod",
                    "verificationMethod": "did:example:issuer#keys-1"
                }
            }
        ],
        "id": "ebc6f1c2",
        "holder": "did:example:holder",
        "proof": {
            "type": "Ed25519Signature2018",
            "created": "2021-03-19T15:30:15Z",
            "challenge": "n-0S6_WzA2Mj",
            "domain": "https://client.example.org/cb",
            "jws": "eyJhb...JQdBw",
            "proofPurpose": "authentication",
            "verificationMethod": "did:example:holder#key-1"
        }
    },
        "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6ImRpZDpleGFtcGxlOjB4YWJjI2tleTEifQ.
        eyJpc3MiOiJkaWQ6ZXhhbXBsZTplYmZlYjFmNzEyZWJjNmYxYzI3NmUxMmVjMjEiLCJqdGkiOiJ1cm46
        dXVpZDozOTc4MzQ0Zi04NTk2LTRjM2EtYTk3OC04ZmNhYmEzOTAzYzUiLCJhdWQiOiJkaWQ6ZXhhbXBs
        ZTo0YTU3NTQ2OTczNDM2ZjZmNmM0YTRhNTc1NzMiLCJuYmYiOjE1NDE0OTM3MjQsImlhdCI6MTU0MTQ5
        MzcyNCwiZXhwIjoxNTczMDI5NzIzLCJub25jZSI6IjM0M3MkRlNGRGEtIiwidnAiOnsiQGNvbnRleHQi
        OlsiaHR0cHM6Ly93d3cudzMub3JnLzIwMTgvY3JlZGVudGlhbHMvdjEiLCJodHRwczovL3d3dy53My5v
        cmcvMjAxOC9jcmVkZW50aWFscy9leGFtcGxlcy92MSJdLCJ0eXBlIjpbIlZlcmlmaWFibGVQcmVzZW50
        YXRpb24iLCJDcmVkZW50aWFsTWFuYWdlclByZXNlbnRhdGlvbiJdLCJ2ZXJpZmlhYmxlQ3JlZGVudGlh
        bCI6WyJleUpoYkdjaU9pSlNVekkxTmlJc0luUjVjQ0k2SWtwWFZDSXNJbXRwWkNJNkltUnBaRHBsZUdG
        dGNHeGxPbUZpWm1VeE0yWTNNVEl4TWpBME16RmpNamMyWlRFeVpXTmhZaU5yWlhsekxURWlmUS5leUp6
        ZFdJaU9pSmthV1E2WlhoaGJYQnNaVHBsWW1abFlqRm1OekV5WldKak5tWXhZekkzTm1VeE1tVmpNakVp
        TENKcWRHa2lPaUpvZEhSd09pOHZaWGhoYlhCc1pTNWxaSFV2WTNKbFpHVnVkR2xoYkhNdk16Y3pNaUlz
        SW1semN5STZJbWgwZEhCek9pOHZaWGhoYlhCc1pTNWpiMjB2YTJWNWN5OW1iMjh1YW5kcklpd2libUpt
        SWpveE5UUXhORGt6TnpJMExDSnBZWFFpT2pFMU5ERTBPVE0zTWpRc0ltVjRjQ0k2TVRVM016QXlPVGN5
        TXl3aWJtOXVZMlVpT2lJMk5qQWhOak0wTlVaVFpYSWlMQ0oyWXlJNmV5SkFZMjl1ZEdWNGRDSTZXeUpv
        ZEhSd2N6b3ZMM2QzZHk1M015NXZjbWN2TWpBeE9DOWpjbVZrWlc1MGFXRnNjeTkyTVNJc0ltaDBkSEJ6
        T2k4dmQzZDNMbmN6TG05eVp5OHlNREU0TDJOeVpXUmxiblJwWVd4ekwyVjRZVzF3YkdWekwzWXhJbDBz
        SW5SNWNHVWlPbHNpVm1WeWFXWnBZV0pzWlVOeVpXUmxiblJwWVd3aUxDSlZibWwyWlhKemFYUjVSR1Zu
        Y21WbFEzSmxaR1Z1ZEdsaGJDSmRMQ0pqY21Wa1pXNTBhV0ZzVTNWaWFtVmpkQ0k2ZXlKa1pXZHlaV1Vp
        T25zaWRIbHdaU0k2SWtKaFkyaGxiRzl5UkdWbmNtVmxJaXdpYm1GdFpTSTZJanh6Y0dGdUlHeGhibWM5
        SjJaeUxVTkJKejVDWVdOallXeGhkWExEcVdGMElHVnVJRzExYzJseGRXVnpJRzUxYmNPcGNtbHhkV1Z6
        UEM5emNHRnVQaUo5ZlgxOS5LTEpvNUdBeUJORDNMRFRuOUg3RlFva0VzVUVpOGpLd1hoR3ZvTjNKdFJh
        NTF4ck5EZ1hEYjBjcTFVVFlCLXJLNEZ0OVlWbVIxTklfWk9GOG9HY183d0FwOFBIYkYySGFXb2RRSW9P
        Qnh4VC00V05xQXhmdDdFVDZsa0gtNFM2VXgzclNHQW1jek1vaEVFZjhlQ2VOLWpDOFdla2RQbDZ6S1pR
        ajBZUEIxcng2WDAteGxGQnM3Y2w2V3Q4cmZCUF90WjlZZ1ZXclFtVVd5cFNpb2MwTVV5aXBobXlFYkxa
        YWdUeVBsVXlmbEdsRWRxclpBdjZlU2U2UnR4Snk2TTEtbEQ3YTVIVHphbllUV0JQQVVIRFpHeUdLWGRK
        dy1XX3gwSVdDaEJ6STh0M2twRzI1M2ZnNlYzdFBnSGVLWEU5NGZ6X1FwWWZnLS03a0xzeUJBZlFHYmci
        XX19.ft_Eq4IniBrr7gtzRfrYj8Vy1aPXuFZU-6_ai0wvaKcsrzI4JkQEKTvbJwdvIeuGuTqy7ipO-EY
        i7V4TvonPuTRdpB7ZHOlYlbZ4wA9WJ6mSVSqDACvYRiFvrOFmie8rgm6GacWatgO4m4NqiFKFko3r58L
        ueFfGw47NK9RcfOkVQeHCq4btaDqksDKeoTrNysF4YS89INa-prWomrLRAhnwLOo1Etp3E4ESAxg73CR
        2kA5AoMbf5KtFueWnMcSbQkMRdWcGC1VssC0tB0JffVjq7ZV6OTyV4kl1-UVgiPLXUTpupFfLRhf9Qpq
        MBjYgP62KvhIvW8BbkGUelYMetA"
]
```
{% endtab %}
{% endtabs %}

{% hint style="info" %}
The above specification details are taken from [OpenID4VP - Draft 18](https://openid.net/specs/openid-4-verifiable-presentations-1_0-ID2.html) specifications, for more details go through the specifications [here](https://openid.net/specs/openid-4-verifiable-presentations-1_0-ID2.html#name-response-type-vp_token).
{% endhint %}
