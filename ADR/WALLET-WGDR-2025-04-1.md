# Wallet WGDR no. 01. - Version 1.0.0 Naming Decision

### Decision Title:
Version 1.0.0 Specification naming decision 

### Date:
Apr 25, 2025 

### Decision ID:
WALLET-WGDR-2025-04-1

### Status:

CLOSED 

### Decision Statement:

The Working Group confirms the final name for the Specification to be publish as Release Candidate is:
Wallet Building Block 1.0.0-rc

### Responsible Owner(s):

Ali González, Technical Specifications Release Manager

### Supporting References:

- [Internal Survey Pre-release Results - Last updated 2025-04-25 10:30 CET](https://docs.google.com/presentation/d/1ok-gqXU3BrM7O81jvaQUT5--ijOySfzA6dXdcTkjHW8/edit?slide=id.g34fef7da80a_0_1#slide=id.g34fef7da80a_0_1)
- [2025-04-25 GS Wallet BB WG meeting No. 12](https://govstack-global.atlassian.net/wiki/spaces/GH/pages/1254653954)

### Voting Outcome (if applicable):

Voting and discussion was recorded on both supporting reference documents.


## 1. Decision Drivers

- Wallet Building Block is currently only focused on Wallets or Digital Credential Wallets
- Several members of the Working Group agree that we are missing a more agnostic abstraction on Wallets on the specification, leading to questions that we have not agreed on what a Wallet is. However while looking at the Wallet Working Group Landing page there’s both an agnostic description to wallets and a presentation detailing more of this proposal:
  - [Wallet](https://govstack-global.atlassian.net/wiki/spaces/GH/pages/476053507/Wallet)
  - [GovStack Wallet BB - Introduction - v1.0](https://docs.google.com/presentation/d/1BqvZ6xAUqbOnF9YAx1UDTsWrrVxn3X8DfQWynM1uqLQ/edit?exids=71471469%2C71471463&pli=1&slide=id.g2b4c1257b93_0_107#slide=id.g2b4c1257b93_0_107)
- Naming the Building Block “Digital Credentials Wallet” emits an opinion on how will the specification scale, removing the possibility of having a foundational Wallet concept

## 2. Considered options

    Digital Credentials Wallet Building Block

    Wallet Guidelines

The initial proposal was divided in three:

#### Sub-Decision 1: Final Specification Name:
  - Wallet Building Block (4 votes)
  - Wallet Guidelines (4 votes)
  - Wallet Blueprint (3 votes)
  - Wallet Best Practices (3 votes)
  - Wallet Capability (new proposal)
  - Wallet Pattern (0 votes)
#### Sub-Decision 2: Pre-release type to be used:
  - v 1.0.0-alpha (2 votes)
  - v 1.0.0-rc (5 votes) - Winner 

#### Sub-Decision 3: Specification Prefix. Should the specification name be prefixed with “Digital Credentials Wallet”?
  - Yes (3 votes)
  - No (2 votes)
  - Abstain (1 vote)
  - Digital Wallet - Credential Services (new proposal)

### Comments provided as input:
- The current version is focused on VC and Smartphone Wallet.
- What other credentials than digital credentials should the blueprint be dealing with?
- as we add more functionality digital wallet must be common, the subsection becomes -identity services, payment services, etc.
- We should simplify this and, if necessary, re-iterate it in the future. A spec is the first blueprint to interoperability; being driven by technical inputs is okay. Governance and Trust issues can be incorporated in subsequent iterations.

## 3. Decision outcome

- Wallet Building Block v1.0.0-rc to remain as the naming if and only if the following three tasks are completed to reflect the group’s understanding of what a Wallet is by the following three tasks:

| Task | Owners | Status |
| --- | --- | --- |
| Add a description of the Foundational Wallet concept to section 2 of the specification. The documents by the working group can be taken as a basis: [Wallet](https://govstack-global.atlassian.net/wiki/spaces/GH/pages/476053507/Wallet) [GovStack Wallet BB - Introduction - v1.0](https://docs.google.com/presentation/d/1BqvZ6xAUqbOnF9YAx1UDTsWrrVxn3X8DfQWynM1uqLQ/edit?exids=71471469%2C71471463&pli=1&slide=id.g2b4c1257b93_0_107#slide=id.g2b4c1257b93_0_107) | David Higgins | Completed | 
| Add the following 2 concepts to the Terminology section: 1) Container 2) Content | Rounak Nayak | Completed |
| Ensure the Release notes reflect the scope for the document | Ali González, Ott Sarv | Completed |

 
