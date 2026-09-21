# Demo: Sample SaaS onboarding (invite teammate)

**Pack:** ShipRight  
**Status: DRAFT — teaching sample only — not a real product.**  
**Tagline:** Context before generate. Product before pixels.

## What this demo proves

Same job (**invite a teammate**). Two paths:

| Path | What happens | Result |
|------|--------------|--------|
| **A — Empty vibe-code** | “Build me a members dashboard” with no docs | Generic purple SaaS, invented nav, happy-path only |
| **B — ShipRight** | Fill docs → light intake → product-design → ui-ux-design → ux-critique | Scoped flow, real states, countable gates, ship-ready notes |

## Before / after (short narrative)

### Path A — Fail (empty vibe-code)

You tell the agent: *“Build a SaaS members page with onboarding.”*

Typical output:

- Purple / pink gradient hero and glass cards  
- Invented nav: Blog, Community, Pricing, Analytics widgets  
- Fake chart: “Team productivity +128%”  
- One happy layout — no empty, error, or permission-denied  
- CTA says “Get started” (vague)  
- Emoji sparkles as icons  

**Why it fails:** No locked context. The model invents a product. Pixels before product.

### Path B — Success (docs + skills)

1. Lock context with a PRD excerpt (and thin 02–04) — see `filled-01-prd-excerpt.md`  
2. Light intake: 3–5 Qs or **you decide / let me decide**  
3. **product-design** → happy/fail paths + state table → **8-check decision gate**  
4. **ui-ux-design** → structure notes + dials → **10-gate pre-flight**  
5. **ux-critique** → findings + **10-gate ship audit**  
6. File tickets in doc 05 — **then** generate UI  

**Why it works:** Context before generate. Product before pixels. Gates are Pass/Fail, not vibes.

## Files in this folder

| File | Role |
|------|------|
| `README.md` | This guide — before/after + how to run |
| `filled-01-prd-excerpt.md` | Short filled PRD excerpt |
| `sample-skill-outputs.md` | Example outputs from all three skills + gates |

## Suggested path through the pack

1. Read `filled-01-prd-excerpt.md`  
2. Skim `sample-skill-outputs.md` (see what “good” looks like)  
3. Imagine thin docs 02–04: roles Owner/Member; screens Invite modal + Members list  
4. Re-run the skills yourself with the prompts below  
5. Compare any AI generate against Path A fails  

## Sample prompts

**Product-design**

> Using product-design and this example PRD excerpt, shape the invite-teammate flow. Include happy path, fail path, and states: empty members, invite loading, invite error, permission denied for members. Run the 8-check decision gate. Do not invent features outside the PRD.

**UI/UX-design**

> Using ui-ux-design, spec the Members empty state and Invite form. Design read + dials. No gradients, no invented nav. Primary CTA: Invite teammate. Run the 10-gate pre-flight.

**UX-critique**

> Critique this generated Members page for slop tells and missing states. Run the 10-gate ship audit. No fake user quotes.

## What “good” looks like (checklist)

- [ ] Scope stays at invite + members list — no random dashboard widgets  
- [ ] Denied and error states are explicit  
- [ ] Empty ≠ filtered empty  
- [ ] CTA language matches the job (“Invite teammate”)  
- [ ] Decision gate / pre-flight / ship audit filled Pass or Fail  
- [ ] No purple SaaS / emoji-icons / fake metrics  

## Compare to UI-only packs

Taste / Hallmark / Pro Max can make Path A *prettier*. ShipRight still requires Path B’s **docs + product decisions** so prettier UI is the *right product*.

---

*DRAFT — examples/sample-saas-onboarding — ShipRight*
