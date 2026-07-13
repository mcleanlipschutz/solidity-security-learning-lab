# Solidity Security Learning Lab

A structured, evidence-based learning environment for improving Solidity development, Foundry testing, vulnerability analysis, remediation design, and professional audit-report writing.

## Purpose

This repository is designed to become a public portfolio of completed security exercises. Work is not considered complete merely because a note or task says it is complete. Each exercise must be supported by code, tests, a written finding, remediation, and a regression test.

## Current Baseline

The lab starts from a clean baseline. Skill levels are **unverified** until demonstrated through repository evidence. The first four exercises progressively test authorization, external-call safety, signature validation, and accounting logic.

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
- `case-studies/` — completed portfolio case studies

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

All vulnerable contracts are intentionally created for local educational use. Do not deploy or test exploit code against production systems, third-party contracts, or assets without explicit authorization. See `docs/ethics-and-scope.md`.

## Author

McLean Lipschutz
