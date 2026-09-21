# Sample skill outputs — invite teammate (teaching only)

**Status: DRAFT example — fictional Acme Team.**  
**Pack:** ShipRight 0.2.1-draft  
These are **abbreviated** samples so you can see shape + gates. Real runs should be fuller.

---

## 0) Intake (shared, one short message)

**Agent asks (4 questions):**

1. What flow? Examples: Invite teammate / Resend invite / Members empty. Or **you decide / let me decide**.  
2. Primary user? Examples: New Owner / Member. Or **you decide / let me decide**.  
3. Success moment? Examples: Invite sent + pending row. Or **you decide / let me decide**.  
4. Constraints? Examples: No new roles / Owner-only invite. Or **you decide / let me decide**.

**User:** let me decide on all.

**Agent finalizes:**  
`ASSUMPTION` — Flow = Invite teammate (J1). User = Workspace Owner. Success = invite email sent + pending row. Constraint = Owner-only; Member role only.  
Job: *Owner invites a teammate by email in under two minutes.*

---

## 1) product-design (excerpt)

**Mode:** Shape flow  

**Happy path**

1. Owner opens Members  
2. Owner clicks **Invite teammate**  
3. Owner enters email + role Member  
4. System validates + sends invite  
5. Owner sees pending row; invitee gets email  

**Fail / cancel path**

1. Invalid email → inline error; keep input  
2. Send fails → form error + Retry; no fake success  
3. Owner cancels → close modal; no invite created  
4. Member opens Invite → **permission denied** (not empty state)

**State table (abbrev)**

| State | User sees | Primary action |
|-------|-----------|----------------|
| Empty | “No teammates yet” | Invite teammate |
| Loading | Skeleton rows / busy button | — |
| Success | Pending or active row | Resend (pending) |
| Error | “Couldn’t send invite” | Retry |
| Permission denied | “Only owners can invite” | Back / ask owner |
| Filtered empty | “No teammates match filter” | Clear filter |

### Decision gate (8 checks)

| # | Check | Result | Note |
|---|-------|--------|------|
| 1 | Docs refuse gate | **Pass** | PRD excerpt + assumed thin 02–04 |
| 2 | Job one sentence | **Pass** | Owner invites by email |
| 3 | Happy path in scope | **Pass** | J1 only |
| 4 | Fail/cancel path | **Pass** | Validation, send fail, cancel, denied |
| 5 | Core states | **Pass** | Empty/loading/success/error/denied |
| 6 | Empty ≠ filtered empty | **Pass** | Called out |
| 7 | Destructive/high-risk | **Pass** | N/A for invite; resend is safe |
| 8 | Open Qs / ASSUMPTIONs | **Pass** | Bounce expiry still open in PRD |

**Handoff to ui-ux-design:** Screens Members list + Invite modal. Primary CTA: Invite teammate. No Blog/Analytics nav.

---

## 2) ui-ux-design (excerpt)

**Design read:** Trust-first B2B members list — calm, single primary CTA, low motion.  
**Dials:** VARIANCE=5 · MOTION=3 · DENSITY=5  
**Personal taste loaded:** no

**Structure — Members (empty)**

1. H1: Teammates  
2. Short context: Invite people to collaborate in this workspace  
3. Primary CTA: **Invite teammate**  
4. Empty illustration optional — quiet, not purple mesh  

**Structure — Invite modal**

1. Title: Invite teammate  
2. Email field + Role (Member, locked for v1)  
3. Primary: Send invite · Secondary: Cancel  
4. Inline error region  

**AVOID:** purple gradients, emoji icons, fake “Active users +128%” widgets, invented nav.

### 10-gate pre-flight

| # | Gate | Result | Note |
|---|------|--------|------|
| 1 | Screen locked | **Pass** | Members + Invite (assumed doc 04) |
| 2 | Design read + dials | **Pass** | Stated above |
| 3 | Primary action | **Pass** | Invite teammate |
| 4 | States covered | **Pass** | Table in product-design + UI notes |
| 5 | Anti-slop | **Pass** | Bans listed |
| 6 | Nav honesty | **Pass** | No invented destinations |
| 7 | A11y baseline | **Pass** | Focus order modal; text errors |
| 8 | Motion honesty | **Pass** | MOTION=3; fade only |
| 9 | Dial fidelity | **Pass** | Balanced density; no hero theater |
| 10 | Assumptions + critique-ready | **Pass** | Ready for ux-critique |

---

## 3) ux-critique (excerpt — against a bad Path A generate)

**Artifact:** Hypothetical Stitch “Members dashboard” with gradient hero + 6 widgets  
**Verdict:** **fix-then-ship** (actually: strip invents, then redesign against docs)

### Findings (sample)

**B1 — [Blocker] Permission denied missing**  
- Evidence: Member view looks identical; invite always shown  
- Rewrite ask: Add denied state from product-design; hide Invite for non-owners  
- Route: product-design + ui-ux-design  

**M1 — [Major] Invented Analytics widgets**  
- Evidence: “Productivity +128%” not in PRD  
- Rewrite ask: Remove widgets; Members list + Invite only  
- Route: ui-ux-design  

**M2 — [Major] Purple gradient + emoji icons**  
- Evidence: Hero mesh + ✨ badges  
- Rewrite ask: Neutral surface + SVG icons per anti-slop rules  
- Route: ui-ux-design  

### 10-gate ship audit

| # | Gate | Result | Note |
|---|------|--------|------|
| 1 | Artifact | **Pass** | Generate attached |
| 2 | Docs honesty | **Pass** | Critiqued vs PRD excerpt |
| 3 | Job clarity | **Fail** | Hero hides Members job |
| 4 | Primary action | **Fail** | Competing Upgrade / Get started |
| 5 | States | **Fail** | No denied/error/empty distinct |
| 6 | No blockers open | **Fail** | B1 open |
| 7 | Anti-slop | **Fail** | Gradient + fake metrics |
| 8 | Trust / dark patterns | **Pass** | No fake urgency timers |
| 9 | A11y baseline | **Fail** | Color-only status dots |
| 10 | Rewrite path | **Pass** | Each finding routed |

**Next steps:** Return to ui-ux-design with Path B structure notes; re-critique; then tickets in doc 05.

---

## Takeaway

Path A fails the ship audit. Path B passes decision gate + pre-flight **before** generate — so critique stays small (polish), not a product rewrite.

---

*DRAFT example — ShipRight — not a live product*
