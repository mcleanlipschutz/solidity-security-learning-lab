# Review Workflow

## 1. Scope
Record repository, commit, files, exclusions, compiler version, and assumptions.

## 2. Understand
Describe actors, assets, privileges, external dependencies, and intended invariants.

## 3. Review
Trace state changes, external calls, authorization checks, accounting, signatures, upgrade paths, and denial-of-service conditions.

## 4. Test
Start with normal behavior, then edge cases, adversarial unit tests, fuzz properties, invariants, and proof-of-concept tests.

## 5. Report
Write root cause, preconditions, impact, likelihood, severity, remediation, and test evidence.

## 6. Remediate
Fix the root cause, preserve intended behavior, and add regression coverage.

## 7. Verify
Run `forge fmt --check`, `forge build`, and `forge test -vv` before completion.
