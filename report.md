# Primitive

Primitive is a team of deeply technical passionate indciduals, building the future of finance. 

# Introduction

The focus of the security review was on the following:

1. Measure the saftey critical properties of the dispute.
2. Measure the economic security of the bond mechanisms.
3. Statefully fuzz the whole system over different fee markets.

*Disclaimer:* This security review does not guarantee against a hack. It is a snapshot in time of brink according to the specific commit by a three person team. Any modifications to the code will require a new security review.

## Agent Based Modeling
Arbiter uses agent based modeling with the rust evm to provide security and risk analysis insights that are traditionally more difficult to audit.
Our agent architecture for the dispute game is as follows:

- Oracle Agent: Responsible for syncing the dispute game state by loading the latest claim and then solving the correct move for that claim by making an api call to durin. The oracle agent will then send honest moves to the honest agent.
- Honest Agent: The Honest Agent is responsible for receiving the honest moves from the oracle agent and then acting on them in the dispute game.
- Dishonest Agent: The Dishonest Agent is responsible for acting attempting to resolve an incorrect move in the dispute game, We will perturb the dishonest agent to look for insecurities in the protocol.

| Agents | Contracts | Oracles |
| --- | --- | --- |
| Oracle Agent | Dispute Game factory | Durin |
| Honest Agent | Dispute Games |
| Dishonest Agent |  |

## Risk Modeling
We will perturb over the infinite space of dishost actors for the dispute game. We will also perturb various L1 preposals. This will enable us to model the risk of the protocol in a more robust way.

# Findings 

## Critical Risk

## High Risk
### Issue title (Only first word should be capitalized; titles should never end with punctuation)

**Severity:** High

**Context:** [`Contract.sol#L160-L165`](https://github.com/actuallink)

**Description:**

```solidity
contract Test {
    ...
    // Code blocks must be indented with 4 spaces.
}
```

**Recommendation:**
```diff
+ use diff syntax to describe what should be changed
- ...
```

**Project:** Fixed in [PR #1](Https://github.com/actuallink).

**Spearbit:** Resolved.

## Medium Risk

## Low Risk

## Gas Optimizations

# Additional Comments

# Appendix

