# Solidity Security Learning Lab

A public portfolio focused on Solidity security, smart-contract vulnerability analysis, Foundry testing, remediation, and professional security reporting.

## Purpose

This repository is a structured environment for developing and documenting practical smart-contract security skills. Each completed exercise is supported by code, tests, a written finding, remediation, and a regression test where applicable.

The goal is not simply to identify a vulnerable line of code. The goal is to explain the exploit condition, root cause, realistic impact, severity, remediation, and evidence showing that the fix works.

## Repository Map

- `src/` — secure reference implementations and Solidity practice
- `test/` — Foundry unit tests and exercise test scaffolds
- `exercises/` — intentionally vulnerable educational contracts and instructions
- `findings/` — security finding write-ups
- `reports/` — complete audit-style reports
- `solutions/` — remediation implementations
- `docs/` — workflow, severity methodology, curriculum, and skills matrix
- `templates/` — reusable finding, report, and submission templates
- `progress/` — dated learning logs and reviews

## Quick Start

```bash
forge build
forge test -vv
forge fmt --check
```

This repository is self-contained and does not require `forge-std` for its starter tests.

## Exercise Workflow

1. Review the scoped contract and exercise instructions.
2. Record an initial threat model before writing exploit code.
3. Identify the vulnerability, root cause, preconditions, impact, and severity.
4. Write a Foundry proof-of-concept test when appropriate.
5. Document the issue using `templates/finding-template.md`.
6. Implement remediation under `solutions/`.
7. Add a regression test proving the remediation.
8. Update `docs/skills-matrix.md` with repository evidence.

## Evidence Standard

A security conclusion should be supported by evidence another reviewer can reproduce.

For each completed vulnerability exercise, I aim to preserve:

- affected contract and function
- vulnerability and root cause
- exploit preconditions
- proof of concept
- security impact
- severity rationale
- remediation
- regression test

## Ethical Use

All vulnerable contracts in this repository are intentionally created for local educational use. Do not deploy or test exploit code against production systems, third-party contracts, or assets without explicit authorization. See `docs/ethics-and-scope.md`.

## Author

McLean Lipschutz
