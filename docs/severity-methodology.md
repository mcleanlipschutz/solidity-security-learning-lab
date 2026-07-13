# Severity Methodology

Severity is based on **impact** and **likelihood**, not on vulnerability labels alone.

## Impact

- **High:** Direct loss of significant assets, permanent loss of control, protocol insolvency, or broad unauthorized privilege.
- **Medium:** Material but bounded loss, temporary denial of critical functionality, or significant integrity failure.
- **Low:** Limited loss or disruption requiring unusual conditions, or a weakness with narrow scope.
- **Informational:** Quality, clarity, defense-in-depth, or maintainability concern without a credible direct security impact.

## Likelihood

Evaluate attacker access, required capital, timing, discoverability, repeatability, privileges, external dependencies, and whether preconditions are realistic.

## Rating Rule

Every finding must state:

- Preconditions
- Exploit path
- Affected assets or users
- Maximum credible impact
- Practical constraints
- Confidence and unresolved assumptions

A centralized administrative capability is not automatically a vulnerability when it is intentional, documented, and appropriately governed.
