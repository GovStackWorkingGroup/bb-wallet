# 8 Service APIs

This section provides a reference for APIs that should be implemented by this Building Block. The APIs defined here establish a blueprint for how the Building Block will interact with other Building Blocks. Additional APIs may be implemented by the Building Block, but the listed APIs define a minimal set of functionality that should be provided by any implementation of this Building Block.&#x20;

The [GovStack non-functional requirements document](https://govstack.gitbook.io/specification/architecture-and-nonfunctional-requirements/6-onboarding) provides additional information on how 'adaptors' may be used to translate an existing API to the patterns described here. This section also provides guidance on how candidate products are tested and how GovStack validates a product's API against the API specifications defined here.&#x20;

{% hint style="success" %}
All APIs will be defined using the OpenAPI (Swagger) standard. The API definitions will be hosted outside of this document. This section may provide a brief description of required APIs.&#x20;

This section will primarily contain links to the GitHub repository for OpenAPI definition (yaml) files as well as to a website hosted by GovStack that provides a live API documentation portal.

Note that APIs should be grouped by functional area (from sections 4 and 6) where appropriate.

OpenAPI links to the GitHub repository can be made in an interactive way using the GitBook OpenAPI widget, linking to the GitHub repo version of the .yaml file, remembering to link to the “raw” url. An example from the Registries BB is shown below and can be replaced.
{% endhint %}

## 8.1 Administrative APIs

{% swagger src=".gitbook/assets/Govstack_scheduler_BB_APIs.json" path="/event/new" method="post" %}
[Govstack_scheduler_BB_APIs.json](.gitbook/assets/Govstack_scheduler_BB_APIs.json)
{% endswagger %}

{% swagger src=".gitbook/assets/Govstack_scheduler_BB_APIs.json" path="/event/modifications" method="put" %}
[Govstack_scheduler_BB_APIs.json](.gitbook/assets/Govstack_scheduler_BB_APIs.json)
{% endswagger %}

{% swagger src=".gitbook/assets/Govstack_scheduler_BB_APIs.json" path="/event" method="delete" %}
[Govstack_scheduler_BB_APIs.json](.gitbook/assets/Govstack_scheduler_BB_APIs.json)
{% endswagger %}

## 8.2 User APIs
