# Wallet WGDR no. 02 - Removing eIDAS as a requirement

### Decision Title:
Removing eIDAS as a requirement

### Date:
May 2, 2025 

### Decision ID:
WALLET-WGDR-2025-05-2

### Status: 
CLOSED 

### Decision Statement:

The Working Group confirms it will remove requirement “5.1.3. eIDAS & eIDAS2 Principles (MUST)”

### Responsible Owner(s):

Ali González, Technical Specifications Release Manager

### Voting Outcome (if applicable):

Deliberation was held between authors listed in the specification via mailing list. Although this method is meant to prioritize deliberation rather than voting, authors expressed their decision as follows:
  - Remove the requirement: PS RAMKUMAR, Jaume DUBOIS, Torsten Lodderstedt, Vishwanath V
  - Keep it but make it recommended: Lal Chandran, Abbie Barbir, George J Padayatti
  - Abstain or neutral: David Higgins, Mary Metias, Lotta Lundin 

Several authors expressed a preoccupation to require or reference a regulatory framework (Lal Chandran, Jaume DUBOIS) recommending these 3 different options: 1) Switch the requirement from requiring eIDAS to require a governance framework in general 2) include eIDAS within the GovStack Implementation Playbook, 3) Move eIDAS into an appendix section that provides functionality-wise references to one or more relevant standards that people can adopt in their regions. This concerns remain captured here as action items to include in a future patch version of this specification.

## 1. Decision Drivers
- Not having an associated regulatory framework is not an option. - Lal Chandran
- To remain a globally relevant open community initiative, Govstack should not force EU standards or any other standards on everyone in the world. - PS RAMKUMAR 

## 2. Considered options
- Remove 5.1.3 Requirement from the specification
- Keep 5.1.3 Requirement, but change the requirement level to RECOMMENDED

## 3. Decision outcome

After the deliberation happened in the mailing list, the decisions compiled by the Specifications Release Manager remain as below:
- GovStack should remain framework agnostic
- Authors express concern about a governance framework being required, however can be included on patch version of the specification, or for version 2 of the current Building Block
- **Requirement number 5.1.3 will be removed and subsequent requirements will be renumbered.**
- **The current Working Group Decision Record will be referenced on the Release Notes.**
