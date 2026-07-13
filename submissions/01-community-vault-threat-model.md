# CommunityVault Threat Model — First Attempt

> Complete this before writing exploit tests. Do not consult public solutions until the first attempt is committed.

## Scope

- In-scope contract: `exercises/01-vault-review/CommunityVault.sol`
- In-scope functions:
  - `constructor(address manager_)`
  - `deposit()`
  - `emergencyTransfer(address payable recipient, uint256 amount)`
- Out of scope for this first pass:
  - Gas optimization
  - Style-only findings
  - Hypothetical integrations not required to exercise the contract

## Intended Purpose

In your own words, explain what the vault appears designed to do.

**Your answer:**

## Actors

For each actor, record what they can legitimately do and what they may attempt to abuse.

| Actor | Legitimate capabilities | Potentially hostile behavior |
|---|---|---|
| Manager |  |  |
| Depositor |  |  |
| Arbitrary externally owned account |  |  |
| External contract |  |  |
| Transfer recipient |  |  |

## Assets

List the assets or security-relevant state that require protection.

| Asset | Why it matters | Who should control it? |
|---|---|---|
| Vault Ether balance |  |  |
| Per-user `deposits` accounting |  |  |
| Emergency-transfer authority |  |  |
| Manager identity |  |  |

## Trust Boundaries

Identify where execution or data crosses from one trust domain to another.

1. Caller → `deposit()`:
2. Caller → `emergencyTransfer()`:
3. Vault → recipient during Ether transfer:
4. Manager → any external contract the manager chooses to interact with:

## Authorization Questions

Answer these from the code, citing exact lines or expressions.

1. What condition decides whether `emergencyTransfer()` is authorized?
2. Which transaction-context values are available during nested contract calls?
3. Does the authorization check identify the immediate caller, the transaction initiator, or something else?
4. Can the manager safely interact with an arbitrary external contract under this authorization model? Explain without yet writing a proof of concept.
5. What assumptions must remain true for the emergency-transfer authority to be safe?

## Intended Invariants

Write each invariant as a statement that should remain true for every valid execution.

- **INV-01 — Authorization:**
- **INV-02 — Balance safety:**
- **INV-03 — Accounting:**
- **INV-04 — External interaction:**
- **INV-05 — Manager identity:**

## Abuse Cases

Describe at least three attacker stories. Use this format:

> Given [precondition], when [actor/action], then [undesired result] may occur because [security assumption].

1. 
2. 
3. 

## Initial Risk Assessment

- Suspected issue category:
- Preconditions:
- Potential impact:
- Likelihood:
- Initial severity hypothesis:
- Confidence level:

## Test Hypotheses for MCL-7

Do not write the tests yet. State what a future test would need to prove or disprove.

- Baseline authorized transfer hypothesis:
- Unauthorized direct-call hypothesis:
- Nested-interaction hypothesis:
- Balance/accounting hypothesis:

## First-Attempt Conclusion

Choose one and defend it:

- [ ] A security finding likely exists.
- [ ] No security finding is currently supported.
- [ ] More evidence is required before reaching a conclusion.

**Reasoning:**

## Evidence Checklist

- [ ] Scope completed
- [ ] Actors completed
- [ ] Assets completed
- [ ] Trust boundaries completed
- [ ] Intended invariants completed
- [ ] Abuse cases completed
- [ ] Initial risk assessment completed
- [ ] Test hypotheses completed
- [ ] First-attempt conclusion written
