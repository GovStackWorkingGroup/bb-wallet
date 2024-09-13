---
description: >-
  This section provides a reference for APIs that should be implemented by this
  Building Block.
---

# 8 Service APIs

This section provides a reference for APIs that this Building Block should implement. The APIs defined here establish a blueprint for how the Building Block will interact with other building blocks. The Building Block may implement additional APIs, but the listed APIs define a minimal set of functionality that any implementation of this Building Block should provide.

The [GovStack non-functional requirements document](https://govstack.gitbook.io/specification/architecture-and-nonfunctional-requirements/6-onboarding) provides additional information on how 'adaptors' may be used to translate an existing API to the patterns described here. This section also guides how candidate products are tested and how GovStack validates a product's API against the API specifications defined here.

## 8.1 Credential Discovery

### 8.1.1. Credential Offer Endpoint

{% swagger src=".gitbook/assets/wallet-bb (1).yaml" path="/credential_offer" method="get" %}
[wallet-bb (1).yaml](<.gitbook/assets/wallet-bb (1).yaml>)
{% endswagger %}

### 8.1.2. Credential Issuer Metadata

{% swagger src=".gitbook/assets/wallet-bb (1).yaml" path="/.well-known/openid-credential-issuer" method="get" %}
[wallet-bb (1).yaml](<.gitbook/assets/wallet-bb (1).yaml>)
{% endswagger %}

### 8.2. Credential Issuance

### 8.2.1. Authorization Endpoint

{% swagger src=".gitbook/assets/wallet-bb (1).yaml" path="/authorize" method="get" %}
[wallet-bb (1).yaml](<.gitbook/assets/wallet-bb (1).yaml>)
{% endswagger %}

### 8.2.2. Token Endpoint

{% swagger src=".gitbook/assets/wallet-bb (1).yaml" path="/token" method="post" %}
[wallet-bb (1).yaml](<.gitbook/assets/wallet-bb (1).yaml>)
{% endswagger %}

### 8.2.3. Credential Endpoint

{% swagger src=".gitbook/assets/wallet-bb (1).yaml" path="/credential" method="post" %}
[wallet-bb (1).yaml](<.gitbook/assets/wallet-bb (1).yaml>)
{% endswagger %}

### 8.2.4. Batch Credential Endpoint

{% swagger src=".gitbook/assets/wallet-bb (1).yaml" path="/batch_credential" method="post" %}
[wallet-bb (1).yaml](<.gitbook/assets/wallet-bb (1).yaml>)
{% endswagger %}

### 8.2.5. Deffered Credential Endpoint

{% swagger src=".gitbook/assets/wallet-bb (1).yaml" path="/deferred_credential" method="post" %}
[wallet-bb (1).yaml](<.gitbook/assets/wallet-bb (1).yaml>)
{% endswagger %}

### 8.2.6. Notification Endpoint

{% swagger src=".gitbook/assets/wallet-bb (1).yaml" path="/notification" method="post" %}
[wallet-bb (1).yaml](<.gitbook/assets/wallet-bb (1).yaml>)
{% endswagger %}

## 8.3 Credential Presentations

### 8.3.1 Authorization Request



{% swagger src=".gitbook/assets/wallet-bb (1).yaml" path="/verify/authorize" method="post" %}
[wallet-bb (1).yaml](<.gitbook/assets/wallet-bb (1).yaml>)
{% endswagger %}

{% hint style="info" %}
The wallet-building block would be making egress calls for,

* An authentication system for initiating authentication of the holder
* The consent system for capturing the holder's consent
{% endhint %}
