# 8 Service APIs

This section provides a reference for APIs that should be implemented by this Building Block. The APIs defined here establish a blueprint for how the Building Block will interact with other Building Blocks. Additional APIs may be implemented by the Building Block, but the listed APIs define a minimal set of functionality that should be provided by any implementation of this Building Block.

The [GovStack non-functional requirements document](https://govstack.gitbook.io/specification/architecture-and-nonfunctional-requirements/6-onboarding) provides additional information on how 'adaptors' may be used to translate an existing API to the patterns described here. This section also guides how candidate products are tested and how GovStack validates a product's API against the API specifications defined here.

{% hint style="success" %}
All APIs will be defined using the OpenAPI (Swagger) standard. The API definitions will be hosted outside of this document. This section may provide a brief description of required APIs.

This section will primarily contain links to the GitHub repository for OpenAPI definition (YAML) files as well as to a website hosted by GovStack that provides a live API documentation portal.

Note that APIs should be grouped by functional area (from sections 4 and 6) where appropriate.

OpenAPI links to the GitHub repository can be made in an interactive way using the GitBook OpenAPI widget, linking to the GitHub repo version of the .yaml file, and remembering to link to the “raw” URL. An example from the Registries BB is shown below and can be replaced.
{% endhint %}



## 8.1 Credential Issuance

### 8.1.1. Credential Offering Endpoint

{% swagger src=".gitbook/assets/wallet-bb (1).yaml" path="/credential_offer" method="get" %}
[wallet-bb (1).yaml](<.gitbook/assets/wallet-bb (1).yaml>)
{% endswagger %}

### 8.1.1 Authorization Endpoint

{% swagger src=".gitbook/assets/wallet-bb.yaml" path="/authorize" method="get" %}
[wallet-bb.yaml](.gitbook/assets/wallet-bb.yaml)
{% endswagger %}

### 8.1.2 Token Endpoint

{% swagger src=".gitbook/assets/wallet-bb.yaml" path="/token" method="post" %}
[wallet-bb.yaml](.gitbook/assets/wallet-bb.yaml)
{% endswagger %}

### 8.1.3 Credential Endpoint

{% swagger src=".gitbook/assets/wallet-bb.yaml" path="/credential" method="post" %}
[wallet-bb.yaml](.gitbook/assets/wallet-bb.yaml)
{% endswagger %}

### 8.1.3 Deffered Credential Endpoint

{% swagger src=".gitbook/assets/wallet-bb (1).yaml" path="/deferred_credential" method="post" %}
[wallet-bb (1).yaml](<.gitbook/assets/wallet-bb (1).yaml>)
{% endswagger %}

## 8.2 Credential Presentations

### 8.2.1 Authorization Request

{% swagger src=".gitbook/assets/wallet-bb (1).yaml" path="/verify/authorize" method="get" %}
[wallet-bb (1).yaml](<.gitbook/assets/wallet-bb (1).yaml>)
{% endswagger %}

{% hint style="info" %}
The wallet-building block would be making egress calls for,

* An authentication system for initiating authentication of the holder
* The consent system for capturing the holder's consent
{% endhint %}
