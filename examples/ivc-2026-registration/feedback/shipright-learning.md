# From owner feedback to ShipRight guidance

**Source:** Owner's IVC 2026 prototype review, September 25, 2026. **Pack change:** 0.3.0-draft → 0.4.0-draft. This is a traceable learning record, not a claim that the revised prototype has been built or that a model has been fine-tuned.

The first prototype demonstrated a connected flow, but it missed operational decisions that should have been examined before implementation. The owner should not have had to discover every alternate starting point and return visit manually. Some feedback corrects the prior brief; some restores details already present in an earlier source; some introduces new scenarios. Preserve those distinctions.

The full revised product specification is [Context brief v2](../docs/06-context-brief-v2.md). It is self-contained for another builder. Screenshots were used as layout/interaction references; their legal wording, browser chrome and personal information are not included in this learning package.

## What changed and where it belongs

| ID | Owner feedback / issue | Corrected behavior or decision | Reusable lesson | Destination / check |
|---|---|---|---|---|
| F01 | Oversized sidebar logo and heavy title compete with work | Small logo beside restrained IVC 2026 at top; actual logo favicon | Match branding emphasis to screen job; reuse approved assets | Operator workspaces; A19 |
| F02 | Date/time/venue repeated; fees and shirts always occupy space | Full details on public/ticket surfaces; discoverable desk help for reference facts | Separate needed-now, verification and occasional-reference content | Operator workspaces; A19 |
| F03 | “Before you begin” adds little value | COC link/copy, important rules and staff answers in context | Help must resolve the task rather than fill empty space | Operator workspaces; A08, A19 |
| F04 | Keep regional context and scoped counts | Preserve Central USA / Central Region and correctly labeled counts | Retain what works; distinguish scope of each metric | Brief sections 3–4; A18–A21 |
| F05 | Phone may be wrong, unknown or shared with a relative | First name, last name, phone and combinations; disambiguate | Challenge primary identifier assumptions; shared contact is not identity or relationship | Operational flows; A02, A10 |
| F06 | Seventeen-year-old discovers parent requirement too late | Flag parent signature at lookup/setup; pending until valid signature | Surface known dependencies before dependent work | Operational flows; A06 |
| F07 | COC must block progression, with an action right there | Complete now/open link/copy for later, refresh or permitted attestation | A blocked state needs a permitted recovery path | Operational flows; A08 |
| F08 | Staff may see completion on the attendee's phone | Explicit “I saw confirmation”; staff account/name, time and JK audit | Distinguish source refresh from an authorized evidence-based override | Operational flows; A08 |
| F09 | Inactive needs facilitator evidence or refreshed source | Collect facilitator identity/contact and staff verifier; clarify policy | Authority, evidence and freshness are different facts | Operational flows; A09; D2 |
| F10 | Adult waiver was incorrectly skipped | Everyone signs; parent/legal guardian signs for under 18; omit irrelevant parent exemption text | Validate actual applicability; do not equate “other actor not needed” with “task not needed” | Brief section 9; A01; requirements critique |
| F11 | Right card should help verify entered data | Live person/group details, size, contact, guardian and relevant totals | Summary space should reduce errors in the current task | Operator workspaces; A07, A19 |
| F12 | Child-first entry needs guardian without backtracking | Search child, resolve eligibility, add/link guardian inline; volunteer lookup or non-volunteer capture | Model entry from either side of a relationship | Operational flows; A03 |
| F13 | Volunteer parent should reveal linked children | Show explicit child links; select attendees; validate each person | Reuse relationships without inferring them from shared attributes | Operational flows; A04–A05 |
| F14 | One guardian can support multiple children; guardian also attends | One link per child needing guardian; separate guardian fee/waiver/QR; no duplicate existing guardian | Grouping reduces typing but must not merge identities or obligations | Operational flows; A03–A05 |
| F15 | Family progress must identify and revisit each person | Named, selectable details/waiver progress; current/complete/needs attention; preserve edits | Progress has both stage and object dimensions | Operator workspaces; A07 |
| F16 | No dead ends; consistency; minimalist hierarchy; 8-point spacing | Clear exit/remaining work; reuse tokens; 8-point system for IVC | Preserve task state; apply the user's spacing preference in scope | Brief sections 4, 8; project preference note below |
| F17 | Parent away should have a usable path | Capture parent contact, personal demo link or sign at desk later | Pending external action needs a resumable state and clear owner | Operational flows; A06, A16 |
| F18 | Pre-covered and desk-request coverage are distinct | Staff-only pre-approval; request audit; Saturday policy questions remain open | Preserve sensitive preexisting decisions; do not invent approval policy | Brief section 11; A11–A12; D9 |
| F19 | Money tendered is not money retained | Display received and change; donate change only when payer explicitly says so | Excess money does not authorize a new allocation | Operational flows; A13, A20 |
| F20 | Non-volunteer may want to donate only; show gratitude | Separate donation flow; proposed optional identity and thank-you; no registration or tax claim | New user goal should not inherit irrelevant constraints; label proposed details | Brief section 10; A14; D5 |
| F21 | Pending payment must be visible immediately at search | Existing record + due amount + direct Collect payment | Resume by outstanding state, preserving valid work | Operational flows; A15 |
| F22 | Same direct recovery for COC, active status and signatures | Show all missing conditions; solve permitted next one; recalculate | Independent status dimensions prevent false completion | Operational flows; A16 |
| F23 | Keep clean list, View dialog and ticket preview | Retain those successful patterns | Feedback is not authorization for indiscriminate redesign | Brief section 13; A18 |
| F24 | Shirt under name; group, desk, status, payment and donation columns | Remove waiver column; retain waiver information in status/details; show donation fixture | Information architecture is about useful comparison, not maximizing columns | Operator workspaces; A18 |
| F25 | Want who completed and when, including updates | Creation, verification, signature, payment and completion actors/times distinct | Audit the actual action; don't substitute one vague updated timestamp | Operational flows / operator workspaces; A08–A09, A18 |
| F26 | Reports are good; more feedback later | Preserve structure; only correct affected money aggregation | Respect the scope of requested feedback | Brief section 14; A20 |
| F27 | Update portable brief and teach the skill; future Soup training | Versioned brief, learning record, targeted core references, candidate corpus and independent trials | Close the feedback loop across source, guidance and evidence | Requirements and feedback reference; this package |

## Guidance, preferences and policy are not interchangeable

**Reusable guidance added to the core skills:** anticipate alternate lookup/entry, visible prerequisites and direct pending-work recovery; separate people, relationships, approval and payment states; preserve valid work; explicit allocation of money; useful operator hierarchy; assess requirements completeness independently from implementation conformance.

**IVC-specific rules stay in its brief:** volunteer eligibility, exact age bands, fees/dates, COC, guardian exemption, staff roles, approval policy, shirt requirements and legal signer. Other products do not inherit them.

**Owner's design preferences:** simple organized operational screens, restrained branding, little repetition, discoverable reference help, consistent navigation, visible progress and an 8-point spacing system. Apply to IVC and future work where the owner chooses this preference. The public pack does not force all users into an 8-point system or a small logo on a marketing page. No global personal-taste overlay is silently installed.

**Still decisions, not instructions to invent policy:** event-day vs registration-day age; facilitator authority; guardian qualification/signing authority; one signature for a named family; donation identity and acknowledgment; cross-JK resume permissions; retention of blocked cases; consent invalidation; affordability approval details at the Saturday meeting. Recommended solutions and unresolved questions are in brief section 17.

## What the first review missed

The old test suite followed the first implementation's model. It could pass phone-only lookup, adult-waiver skipping and automatic surplus donations without exposing that these were incomplete or subsequently corrected requirements. “Five journeys passed” did not mean every real starting condition was covered. The builder's visual approval also did not establish the owner's preference.

The earlier source brief already included first/last-name lookup and a general waiver step; the narrowed interpretation lost important context. The new owner correction makes the waiver rule explicit. Cash change supersedes an earlier automatic-donation instruction. Donation-only is a newly raised job. These are different causes and should not be lumped into “all new requirements”.

Historical evidence remains available, labeled as v1. For v2, adult self-signature, alternate lookup, direct return flows, family entry variants and explicit change allocation need fresh implementation evidence. Documentation and a green old test suite cannot establish those results.

## How to use this with another AI

Supply the [revised brief](../docs/06-context-brief-v2.md), the relevant current ShipRight skill and this learning record. Ask the AI to preserve confirmed rules, recommend interactions within scope and identify only the unresolved policies affecting its next action. Ask for a requirement-to-scenario-to-evidence trail using A01–A22, with flow/design/coverage judged separately. Do not pass the v1 screenshots as a target to reproduce unchanged.

## Training material

[training-candidates.jsonl](training-candidates.jsonl) contains authored, fictional examples in a simple `messages` format. [training-notes.md](training-notes.md) describes provenance, limitations and review. These are candidates for supervised examples, not an approved dataset, trained model or measured improvement. The intended Soup repository has not been identified, so no compatibility or training execution is claimed.
