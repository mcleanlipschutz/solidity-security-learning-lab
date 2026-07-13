# First Two Weeks — Proposed Work Items

These are proposed issue descriptions. Create them in GitHub or Linear only after checking for duplicates.

## Week 1

### 1. Verify Foundry Lab Baseline
- **Priority:** High
- **Difficulty:** Foundational
- **Objective:** Prove the repository builds, formats, and tests locally.
- **Acceptance criteria:** `forge fmt --check`, `forge build`, and `forge test -vv` pass; first progress log committed.
- **Estimate:** 45 minutes

### 2. Threat Model CommunityVault
- **Priority:** High
- **Difficulty:** Foundational
- **Dependency:** Verify Foundry Lab Baseline
- **Objective:** Identify actors, assets, trust boundaries, and administrative assumptions.
- **Acceptance criteria:** Completed exercise submission sections for scope, actors, assets, and intended invariants.
- **Estimate:** 45 minutes

### 3. Test CommunityVault Under Adversarial Interaction
- **Priority:** High
- **Difficulty:** Foundational
- **Dependency:** Threat Model CommunityVault
- **Objective:** Write normal-behavior and proof-of-concept tests without using public solutions.
- **Acceptance criteria:** Reproducible test, root-cause explanation, and documented preconditions.
- **Estimate:** 90 minutes

### 4. Remediate and Report CommunityVault
- **Priority:** High
- **Difficulty:** Foundational
- **Dependency:** Adversarial test completed
- **Objective:** Implement a root-cause fix and produce a professional finding.
- **Acceptance criteria:** Remediation, regression test, finding report, and skills-matrix evidence.
- **Estimate:** 90 minutes

## Week 2

### 5. Map RewardsBank Withdrawal State Transitions
- **Priority:** High
- **Difficulty:** Foundational to Intermediate
- **Dependency:** Exercise 01 completed
- **Objective:** Diagram state reads, external interaction, and state writes.
- **Acceptance criteria:** Call-flow diagram and explicit trust assumptions.
- **Estimate:** 60 minutes

### 6. Build an Adversarial RewardsBank Test Harness
- **Priority:** High
- **Difficulty:** Intermediate
- **Dependency:** Withdrawal mapping completed
- **Objective:** Use a local helper contract to test hostile callback behavior.
- **Acceptance criteria:** Baseline test plus reproducible proof of concept when applicable.
- **Estimate:** 90 minutes

### 7. Remediate RewardsBank and Add Regression Coverage
- **Priority:** High
- **Difficulty:** Intermediate
- **Dependency:** Proof of concept completed
- **Objective:** Fix the root cause while preserving normal withdrawals.
- **Acceptance criteria:** Exploit blocked, ordinary behavior passes, edge case tested.
- **Estimate:** 75 minutes

### 8. Publish Week 2 Security Review Report
- **Priority:** Medium
- **Difficulty:** Intermediate
- **Dependency:** RewardsBank remediation completed
- **Objective:** Consolidate scope, methodology, findings, remediation, and test evidence.
- **Acceptance criteria:** Complete report, progress log, and evidence-based skills update.
- **Estimate:** 60 minutes
