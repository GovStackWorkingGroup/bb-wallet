# Wallet Building Block Specification

This GovStack specification sets out what a digital credential wallet must do. Under it, holders keep the credentials others issue to them, such as identity documents, licences, diplomas, tickets and passes, and use them to prove facts about themselves, under their own control. Governments can require conformance when they procure or certify a wallet, and vendors can state which conformance profiles their product meets.

Version 2.0 is a draft. It defines a Wallet as a holder-bound digital vault that manages credentials and related artefacts, stored in a tamper-proof way and used securely. This replaces the "Container with Content" abstraction of version 1.x ([Wallet TDR no. 03](ADR/WALLET-TDR-2026-10-3.md)).

## How the specification is organised

The requirements are grouped into conformance profiles. Every conformant wallet meets the core profile, and claims an extension profile only for the credentials and presentation methods it supports.

* [Credential Wallet](conformance-profiles/credential-wallet/introduction.md) (core): the wallet keeps credentials signed by issuers other than the holder, of at least one credential type, and presents each of them at the holder's direction. It names no protocol, so a wallet can meet it on its own.
* [Verifiable Credentials](conformance-profiles/verifiable-credentials/introduction.md) (extension): the wallet obtains verifiable credentials over OpenID4VCI, keeps them bound to the holder, and presents them in answer to a verifier's request.
* [Remote Presentation](conformance-profiles/remote-presentation/introduction.md) (extension, requires Verifiable Credentials): the wallet presents verifiable credentials to an online verifier over OpenID4VP.
* [Proximity Presentation](conformance-profiles/proximity-presentation/introduction.md) (extension, requires Verifiable Credentials): the wallet presents mdoc credentials in person over NFC or Bluetooth Low Energy, as specified in ISO/IEC 18013-5.

## Where to start

* [Purpose](introduction/purpose.md): why the Building Block exists, what a Wallet is, and where it fits in larger systems.
* [Scope](introduction/scope.md): what the specification covers and what it leaves to other Building Blocks.
* [Technical Overview](introduction/technical_overview.md): the kinds of wallets on the market, how the conformance profiles divide the capabilities, and example conformance claims.
* [Terminology](introduction/terminology.yml) and [References](introduction/references.md).

## Changes

What changed in each version is recorded in the [Changelog](https://github.com/GovStackWorkingGroup/bb-wallet/blob/main/CHANGELOG.md). The [Release Notes](https://github.com/GovStackWorkingGroup/bb-wallet/blob/main/RELEASE_NOTES.md) explain what to do when moving from one major version to the next. Version 1.x remains available in the [repository history](https://github.com/GovStackWorkingGroup/bb-wallet/tree/main).

## Contributing

The specification is maintained by the GovStack Cross-Functional ID Infrastructure Working Group. Discussion and changes happen in the [repository](https://github.com/GovStackWorkingGroup/bb-wallet). See the [GovStack Process](https://github.com/GovStackWorkingGroup/govstack-process) and the [Specification Framework](https://github.com/GovStackWorkingGroup/specification-framework) for how specifications are written and released.
