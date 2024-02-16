# 5 Cross-Cutting Requirements

{% hint style="success" %}
The Cross-cutting requirements described in this section are an extension of the cross-cutting requirements defined in the architecture blueprint and nonfunctional requirements document. This section will describe any additional cross-cutting requirements that apply to this building block, or any requirements that are defined in the non-functional requirements document that are NOT applicable to this Building Block.

Cross-cutting requirements will use the same language (REQUIRED, RECOMMENDED or OPTIONAL) as specified in the architecture document.

Note: this section will contain 3 parts. The first is a list of Requirements, followed by any exceptions to the cross-cutting requirements for this building block (this section may be skipped if not needed). The third part is a list of relevant standards to this domain that should be used for any Building Block implementation.&#x20;
{% endhint %}

_\<Example Cross-Cutting Requirements from Payments Building Block>_

## 5.1 Requirements

### 5.1.1  Follow all Statutory and Operational Requirements (REQUIRED)

The Payments Building Block assumes that the statutory and operational requirements around accounts (i.e. know your customer/anti-money laundering/counter-terrorist financing) must have been completed by an outside system, which is capable of communicating that status in appropriate timeframes.

### 5.1.2 All Participants should be previously registered (RECOMMENDED)

The Payment System or Scheme in a country may require that participating payor or payee entities, whether health clinics, ministries, or individuals must have been registered with a regulated banking or non-banking entity prior to the use of the Payments Building Block.

## 5.2 Exceptions to Architectural Cross-Cutting Specifications

Cross-Cutting specifications for all Building Blocks are detailed in the [GovStack non-functional requirements document](https://govstack.gitbook.io/specification/architecture-and-nonfunctional-requirements/5-cross-cutting-requirements). However, for this Building Block the following Cross-Cutting Specifications are not required:

**5.17 Databases should not Include Business Logic or Stored Procedures**

Several mundane localized operations on data such as searching, filtering, and format transformations may find a better performance by being collocated with the database itself in form of stored procedures in typical SQL databases. Such procedures must be configured to handle the concurrent processing of multiple requests, with an appropriate mechanism(e.g. SQL agents/SSIS packages/service brokers/etc.). Since data is collocated with the code, when scaled up to clusters of multiple instances of database servers, each instance will utilize local Safeguard for Privileged Sessions.  However, this will create an additional burden on maintenance and update of source code as applications may have part of logic in backend code and partially embedded in database servers. To host complex queries related to data from different databases it is recommended to implement it in business logic rather than stored procedures.  In this case, scalability must be ensured by suitable application infrastructure scaling mechanisms such as Virtual Machine-level scaling and automatic elastic frameworks.



## 5.3 Standards

The following standards are applicable to data structures in the Workflow Building Block:

### 5.3.1 BPMN (REQUIRED)

The workflow Building Block should leverage [BPMN v2.0.2 - Business Process Model and Notation](https://www.omg.org/spec/BPMN/)

### 5.3.2 OpenAPI

[OpenAPI](https://github.com/OAI/OpenAPI-Specification/blob/3.0.2/versions/3.0.2.md)

### 5.3.3 REST APIs

Rest APIs should use JSON payloads. Note that we are not using XML.
