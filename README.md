# Solidity Security Learning Lab

A structured, evidence-based learning environment for improving Solidity development, Foundry testing, vulnerability analysis, remediation design, professional audit-report writing, and cryptocurrency investigation work.

## Purpose

This repository is designed to become a public portfolio of completed security and crypto-investigation exercises. Work is not considered complete merely because a note or task says it is complete. Each exercise must be supported by evidence that another reviewer can follow.

## Featured Crypto Investigation Case Study

### [Bybit / Lazarus Group 2025 — Cross-Chain Crypto Tracing Case Study](case-studies/bybit-lazarus-2025/README.md)

This public case reconstruction follows the February 2025 Bybit theft attributed by the FBI to North Korean TraderTraitor activity. The case study focuses on the investigative side of the laundering network: initial theft, wallet fan-out, DEX activity, chain peeling, THORChain movement from Ethereum into Bitcoin, mixer and service exposure, and later off-ramp activity.

I use public cases for portfolio work because actual law-enforcement cryptocurrency investigations can contain victim information, non-public wallet intelligence, preservation requests, subpoenas, investigative leads, and other information that should not be published.

The case study includes:

- public seed wallets and exploit transaction hashes
- the FBI-published TraderTraitor address list
- a tracing methodology for commingling, swaps, bridges, mixers, and VASPs
- evidence/confidence labels separating on-chain facts from attribution and analytical links
- government, victim, blockchain-intelligence, and technical sources

## Current Baseline

The lab starts from a clean baseline. Skill levels are **unverified** until demonstrated through repository evidence. The first four Solidity exercises progressively test authorization, external-call safety, signature validation, and accounting logic.

## Repository Map

- `src/` — secure reference implementations and normal Solidity practice
- `test/` — Foundry unit tests and exercise test scaffolds
- `exercises/` — intentionally vulnerable educational contracts and instructions
- `findings/` — individual professional finding write-ups
- `reports/` — complete audit-style reports
- `solutions/` — remediation implementations added only after an exercise attempt
- `docs/` — curriculum, workflow, severity methodology, and skills matrix
- `templates/` — reusable submission, finding, report, and progress templates
- `progress/` — dated learning logs and weekly reviews
- `case-studies/` — public portfolio case studies, including cryptocurrency investigations

## Quick Start

```bash
forge build
forge test -vv
forge fmt --check
```

This repository is self-contained and does not require `forge-std` for its starter tests.

## Exercise Workflow

1. Read only the exercise README and scoped contract.
2. Record an initial threat model before writing exploit code.
3. Identify the vulnerability, root cause, preconditions, impact, and severity.
4. Write a Foundry proof-of-concept test when appropriate.
5. Write a professional finding using `templates/finding-template.md`.
6. Implement remediation under `solutions/`.
7. Add a regression test proving the remediation.
8. Update `docs/skills-matrix.md` only with repository evidence.
9. Create a case study only after all acceptance criteria pass.

## Completion Standard

An exercise is complete only when all applicable items exist:

- Vulnerable contract reviewed
- Reproducible proof-of-concept test
- Root-cause explanation
- Supported severity rating
- Secure remediation
- Regression test
- Professional finding report
- Updated progress record

See `docs/definition-of-done.md` for the full standard.

## Ethical Use

All vulnerable contracts are intentionally created for local educational use. Cryptocurrency case studies use public or synthetic data unless explicit authorization exists to use other material. Do not deploy or test exploit code against production systems, third-party contracts, or assets without explicit authorization. See `docs/ethics-and-scope.md`.

## Author

McLean Lipschutz
