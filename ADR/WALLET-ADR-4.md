---
title: Must a Wallet Solution be capable of holding multiple credentials
status: proposed
date: 2026-11-03
decision-makers:
  - Architecture Working Group
consulted:
  - Working Group Representatives
informed:
  - All Working Groups
---
<!-- markdownlint-disable-next-line MD025 -->
# Must a Wallet Solution be capable of holding multiple credentials

## Context and Problem Statement

Currently the Wallet BB Specification (v1.2) definition does not explictly define a requirement to be able to hold multiple credentials (although it is implied).  As we update the Wallet Specification (v2.0) to have explicit requirements the working group is considering if the definition should be updated and a requirement should added that the wallet must be capable of holding multiple credentials.

**The argument for:**  GovStack is built around a Whole of Government (WoG) approach that Building Blocks(BBs) should be able to be re-used by multiple services.  This is to reduce costs for Governments.  If it is not specified as a requirement then the Government cannot guarantee that this is the case from a GovStack Compliant Wallet Solution. In which case if the solution doesnt have the capability it would have muliple wallets for its credentials. Equally for end users this may be suboptimal having to have multiple wallets for their credentials.

**The argument against:** Some Governments only issue a single credential. To enforce a requirement that the wallet must be capable of holding multiple credentials it could be more expensive.


## Decision Drivers

* **Flexibility for Implementation.** By specifying the solution must be capable of holding multiple credentials does not preclude at implementation a single credential being in the wallet; it leaves the decision to the point of implementation.
* **Future Proof Solutions.** By mandating support for multiple credentials it allows in future even if at initial implementation a single credential is in the wallet, others to be added by a government issuer.
* **Fit with GovStack Principles.** It removes any ambiguity against the GovStack WoG approach and principles of reuse.
* **Cost.** There should be minimal cost implications of mandating the capability to hold multiple credentials as this is common capability of wallet solutions even if Government Implementations regularly hold a single credential.

## Considered Options

1. **Must Support Multiple Credentials**.
2. **Must Support at least 1 Credential**.

## Decision Outcome

*To be confirmed by the Architecture Working Group.*

The work that produced this ADR recommends **Option 1, Must Support Multiple Credentials**. 

### Consequences

*To be completed once the option is confirmed.* 

### Confirmation

To be confirmed by the Wallet Working Group. The outcome is implemented in Wallet specification v2.0.

