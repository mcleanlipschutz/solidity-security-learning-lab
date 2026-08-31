# Crypto Investigation & Solidity Security Portfolio

A public portfolio focused on cryptocurrency investigations, blockchain tracing, smart-contract security, and the investigative use of on-chain data.

## Featured Case Study

### [Bybit / Lazarus Group 2025 — Cross-Chain Crypto Tracing Case Study](case-studies/bybit-lazarus-2025/README.md)

This case study reconstructs the February 2025 Bybit theft attributed by the FBI to North Korean TraderTraitor activity. It focuses on the investigative side of the laundering network: the initial theft, wallet fan-out, DEX activity, chain peeling, THORChain movement from Ethereum into Bitcoin, mixer and service exposure, and later off-ramp activity.

I use public cases for portfolio work because actual law-enforcement cryptocurrency investigations can contain victim information, non-public wallet intelligence, preservation requests, subpoenas, investigative leads, and other information that should not be published.

The Bybit case study includes:

- public seed wallets and exploit transaction hashes
- the FBI-published TraderTraitor address list
- tracing methodology for commingling, swaps, bridges, mixers, and VASPs
- evidence/confidence labels separating on-chain facts from attribution and analytical links
- government, victim, blockchain-intelligence, and technical sources

The goal is not to build the largest graph possible. The goal is to show where the assets moved, what supports each connection, where the trace changes chains or passes through a service, and which points create investigative leads.

## Repository Map

- `case-studies/` — public cryptocurrency investigation and security case studies
- `src/` — secure reference implementations and Solidity practice
- `test/` — Foundry unit tests and exercise test scaffolds
- `exercises/` — intentionally vulnerable educational contracts and instructions
- `findings/` — security finding write-ups
- `reports/` — complete audit-style reports
- `solutions/` — remediation implementations
- `docs/` — security curriculum, workflow, severity methodology, and skills matrix
- `templates/` — reusable submission, finding, report, and progress templates
- `progress/` — dated learning logs and reviews

## Solidity Security Work

The Solidity portion of this repository is a structured security lab covering authorization, external-call safety, signature validation, accounting logic, vulnerability analysis, remediation, and regression testing.

### Quick Start

```bash
forge build
forge test -vv
forge fmt --check
```

This repository is self-contained and does not require `forge-std` for its starter tests.

### Exercise Workflow

1. Read the exercise README and scoped contract.
2. Record an initial threat model before writing exploit code.
3. Identify the vulnerability, root cause, preconditions, impact, and severity.
4. Write a Foundry proof-of-concept test when appropriate.
5. Write a finding using `templates/finding-template.md`.
6. Implement remediation under `solutions/`.
7. Add a regression test proving the remediation.
8. Update `docs/skills-matrix.md` with repository evidence.
9. Create a case study after the supporting work is complete.

## Evidence Standard

Whether I am reviewing a smart contract or tracing cryptocurrency, the conclusion should be supported by evidence that another person can review.

For crypto investigations, that means preserving full wallet addresses, transaction hashes, asset amounts, timestamps, attribution sources, and the reason a wallet or service was included in the trace.

For contract-security work, that means showing the vulnerable behavior, root cause, proof of concept, remediation, and regression test.

## Ethical Use

All vulnerable contracts are intentionally created for local educational use. Cryptocurrency case studies use public or synthetic data unless explicit authorization exists to use other material. Do not deploy or test exploit code against production systems, third-party contracts, or assets without explicit authorization. See `docs/ethics-and-scope.md`.

## Author

McLean Lipschutz
