# Four-Week Curriculum

The schedule uses three core sessions per week plus one optional buffer. Dates should be assigned only after checking actual calendar availability.

## Week 1 — Establish the Testing and Review Baseline

### Session 1: Repository and Foundry Orientation — 45 minutes
- Run build, unit tests, formatting, and fuzz tests.
- Read `Counter.sol` and explain each custom error, event, and access-control decision.
- Deliverable: first entry in `progress/`.

### Session 2: Authorization Threat Modeling — 75 minutes
- Complete Exercise 01 initial review.
- Deliverable: threat model and candidate finding.

### Session 3: Proof of Concept and Remediation — 90 minutes
- Write the Exercise 01 proof of concept, remediation, regression test, and finding.
- Deliverable: complete exercise package.

### Buffer — 45 minutes
- Fix compilation, testing, or documentation gaps.

## Week 2 — External Calls and State Safety

### Session 1: External-Call Review — 60 minutes
- Diagram the Exercise 02 withdrawal flow.
- Identify trust boundaries and state transitions.

### Session 2: Adversarial Testing — 90 minutes
- Build a local attacker contract and proof-of-concept test.

### Session 3: Secure Redesign — 75 minutes
- Implement remediation, regression tests, and a finding report.

### Buffer — 45 minutes
- Add a fuzz test around deposits and withdrawals.

## Week 3 — Signatures and Replay Protection

### Session 1: Signature Foundations — 75 minutes
- Model the signed message in Exercise 03.
- Identify every value that should be bound to authorization.

### Session 2: Proof-of-Concept Testing — 90 minutes
- Use Foundry signing cheatcodes to test authorization reuse and context changes.

### Session 3: EIP-712-Inspired Remediation — 90 minutes
- Add nonce handling, deadline validation, domain separation, and regression tests.

### Buffer — 45 minutes
- Review signature malleability and zero-address recovery handling.

## Week 4 — Accounting, Fuzzing, and Portfolio Quality

### Session 1: Share Accounting — 75 minutes
- Define total-assets and total-shares invariants for Exercise 04.

### Session 2: Fuzz and Invariant Testing — 120 minutes
- Add multi-user fuzz tests and at least one invariant handler.

### Session 3: Audit Report and Portfolio Case Study — 90 minutes
- Produce a complete report and one polished case study.
- Update the skills matrix using only committed evidence.

### Buffer — 60 minutes
- Run final CI checks and improve repository navigation.
