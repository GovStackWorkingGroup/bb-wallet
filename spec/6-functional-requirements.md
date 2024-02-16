# 6 Functional Requirements

{% hint style="success" %}
The functional requirements section lists the technical capabilities that this building block should have. These requirements should be sufficient to deliver all functionality that is listed in the Key Digital Functionalities section.&#x20;

These functional requirements do not define specific APIs - they provide a list of information about functionality that must be implemented within the building block. These requirements should be defined by subject-matter experts and don’t have to be highly technical in this section.

This section should contain 2 parts. The first provides the functional requirements for each functional area that is defined for the Building Block (described in Section 4). The functional requirements for each component should have its own sub-section.

The second section outlines the any components that make up the Building Block. Many Building Blocks are made up of multiple components. These can be described (and diagrams provided where appropriate) in this section.
{% endhint %}

_\<Example Functional Requirements>_

The following functionalities must be provided by the Consent Building Block. These functional requirements are linked to the Key Digital Functionalities in Section 4.

### 6.1 Consent Agreements&#x20;

* An administrative user can create, update, and delete Consent Agreements (REQUIRED)
* Notifications should be provided to all parties when changes are made to a Consent Agreement (RECOMMENDED)

### 6.2 User Consent

* A user can view a consent agreement and give consent for that agreement (REQUIRED)
* A user can withdraw consent from an agreement that he/she has previously given consent to (REQUIRED)
* An audit log of all user consent given or withdrawn must be provided (REQUIRED)



## Building Block Components

Within the scope of Consent Building Block version 1.0, the required components are as given: &#x20;

<figure><img src=".gitbook/assets/Screen Shot 2023-04-07 at 11.59.49 AM.png" alt=""><figcaption></figcaption></figure>

**Consent Agreement Configuration Handler** - handles the creation, updation & deletion of consent agreements for organisations. Organisations can be Data Providers or Data Consumers.

**Consent Record Handler** -  enables Individuals to view data usage and consent record.

**Notification Handler** - Handles all notification configurations and notifications requested by different subscribers.

**Administrative User Interface and client Software Development Kit** - These are readily available components that can configure and use the services offered, making integration easy and low code.

**RESTful APIs**: All APIs are exposed as RESTful APIs. These are categorised into Organisation APIs, Individual APIs, and Auditing APIs.
