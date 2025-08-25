---
description: >-
  This section provides a reference for APIs that should be implemented by this
  Building Block.
layout:
  width: wide
  title:
    visible: true
  description:
    visible: true
  tableOfContents:
    visible: true
  outline:
    visible: true
  pagination:
    visible: true
  metadata:
    visible: true
---

# 8 Service APIs

This section provides a reference for APIs that this Building Block should implement. The APIs defined here establish a blueprint for how the Building Block will interact with other building blocks. The Building Block may implement additional APIs, but the listed APIs define a minimal set of functionality that any implementation of this Building Block should provide.

The [GovStack non-functional requirements document](https://govstack.gitbook.io/specification/architecture-and-nonfunctional-requirements/6-onboarding) provides additional information on how 'adaptors' may be used to translate an existing API to the patterns described here. This section also guides how candidate products are tested and how GovStack validates a product's API against the API specifications defined here.



Consideration should be made of the GovStack cross cutting Security considerations at: [https://specs.govstack.global/security-requirements](https://specs.govstack.global/security-requirements)

## 8.1 Credential Discovery

### 8.1.1. Credential Offer Endpoint

{% openapi-operation spec="wallet-bb-api" path="/credential_offer" method="get" %}
[OpenAPI wallet-bb-api](https://raw.githubusercontent.com/GovStackWorkingGroup/bb-wallet/refs/heads/main/spec/.gitbook/assets/wallet-bb%20\(1\).yaml)
{% endopenapi-operation %}

### 8.1.2. Credential Issuer Metadata

{% openapi-operation spec="wallet-bb-api" path="/.well-known/openid-credential-issuer" method="get" %}
[OpenAPI wallet-bb-api](https://raw.githubusercontent.com/GovStackWorkingGroup/bb-wallet/refs/heads/main/spec/.gitbook/assets/wallet-bb%20\(1\).yaml)
{% endopenapi-operation %}

### 8.2. Credential Issuance

### 8.2.1. Authorization Endpoint

{% openapi-operation spec="wallet-bb-api" path="/authorize" method="get" %}
[OpenAPI wallet-bb-api](https://raw.githubusercontent.com/GovStackWorkingGroup/bb-wallet/refs/heads/main/spec/.gitbook/assets/wallet-bb%20\(1\).yaml)
{% endopenapi-operation %}

### 8.2.2. Token Endpoint

{% openapi-operation spec="wallet-bb-api" path="/token" method="post" %}
[OpenAPI wallet-bb-api](https://raw.githubusercontent.com/GovStackWorkingGroup/bb-wallet/refs/heads/main/spec/.gitbook/assets/wallet-bb%20\(1\).yaml)
{% endopenapi-operation %}

### 8.2.3. Credential Endpoint

{% openapi-operation spec="wallet-bb-api" path="/credential" method="post" %}
[OpenAPI wallet-bb-api](https://raw.githubusercontent.com/GovStackWorkingGroup/bb-wallet/refs/heads/main/spec/.gitbook/assets/wallet-bb%20\(1\).yaml)
{% endopenapi-operation %}

### 8.2.4. Batch Credential Endpoint

{% openapi-operation spec="wallet-bb-api" path="/batch_credential" method="post" %}
[OpenAPI wallet-bb-api](https://raw.githubusercontent.com/GovStackWorkingGroup/bb-wallet/refs/heads/main/spec/.gitbook/assets/wallet-bb%20\(1\).yaml)
{% endopenapi-operation %}

### 8.2.5. Deffered Credential Endpoint

{% openapi-operation spec="wallet-bb-api" path="/deferred_credential" method="post" %}
[OpenAPI wallet-bb-api](https://raw.githubusercontent.com/GovStackWorkingGroup/bb-wallet/refs/heads/main/spec/.gitbook/assets/wallet-bb%20\(1\).yaml)
{% endopenapi-operation %}

### 8.2.6. Notification Endpoint

{% openapi-operation spec="wallet-bb-api" path="/notification" method="post" %}
[OpenAPI wallet-bb-api](https://raw.githubusercontent.com/GovStackWorkingGroup/bb-wallet/refs/heads/main/spec/.gitbook/assets/wallet-bb%20\(1\).yaml)
{% endopenapi-operation %}

## 8.3 Credential Presentations

### 8.3.1 Authorization Request



{% openapi-operation spec="wallet-bb-api" path="/verify/authorize" method="post" %}
[OpenAPI wallet-bb-api](https://raw.githubusercontent.com/GovStackWorkingGroup/bb-wallet/refs/heads/main/spec/.gitbook/assets/wallet-bb%20\(1\).yaml)
{% endopenapi-operation %}

{% hint style="info" %}
The wallet-building block would be making egress calls for,

* An authentication system for initiating authentication of the holder
* The consent system for capturing the holder's consent
{% endhint %}
