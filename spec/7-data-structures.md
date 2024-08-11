---
description: >-
  This section provides information on the core data structures/data models that
  are used by this Building Block.
---

# 7 Data Structures

## 7.1. Credential Formats

The specifications should support credentials of any format, including, but not limited to,&#x20;

* SD-JWT VC (Selective Disclosure JWT Verifiable Credentials) \[[I-D.ietf-oauth-sd-jwt-vc](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-sd-jwt-vc-01)],&#x20;
* mDL (ISO mDoc Mobile Driving License) \[ISO 23220-x], and&#x20;
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

* Credential metadata
* Credential claims
* Credential proof

## 7.3. Key API Definition

### 7.3.1. Presentation Definition

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

### 7.3.2. VP Token

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
