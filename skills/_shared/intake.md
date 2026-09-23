# Light intake — ShipRight

**Status: DRAFT.** Context before generate. Product before pixels.

## Rule

Read the request and relevant existing context first. Ask zero questions when the next action is clear. Otherwise ask the smallest number that changes the next decision, usually one and no more than five in one intake round. Do not repeat intake at each skill boundary. The limit is not permission to guess a consequential answer.

Use short examples when helpful. Offer delegation and user choice as separate options:

| User response | Agent behavior |
| --- | --- |
| **You decide** | Choose within delegated scope; state the choice and reason. Do not extend delegation to price, access, external actions or unrelated scope. |
| **Let me decide** | Leave the choice with the user. Recommend if useful and continue independent work. |
| A specific answer or correction | Use current intent. Surface conflicts with older decisions or observed constraints; do not silently prefer an old document. |
| Blank, skipped or ambiguous | Keep unresolved. Offer a safe reversible proposal if useful; silence is not approval. |

An assumption label does not grant authority to decide. Apply [operating-contract.md](operating-contract.md) for authority, missing context, evidence and readiness.

## Question bank

Select only unanswered questions relevant to this task; this is not a form to complete.

- **Work:** Which flow, screen or decision? Examples: invite teammate, members empty state, permission recovery.
- **User:** Whose task are we supporting? Examples: Owner, Member, customer on mobile. Do not invent a role.
- **Outcome:** What result matters? Examples: invite pending, error recovered without lost input.
- **Constraints:** What is approved or excluded? Examples: existing tokens, no new navigation, mobile support.
- **Direction:** If UI direction is unresolved, what character fits? Examples: calm editorial, dense operations workspace. Do not reopen an approved direction for a small fix.

After intake, restate the job in one sentence, distinguish proposals from approvals and proceed with the authorized work. Missing context blocks only the affected commitment; help draft what is needed without inventing facts or approved scope.

Optional personal taste informs defaults only within its scope. Current project decisions and integrity requirements take precedence.
