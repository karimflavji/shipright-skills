# ShipRight

**Status: Public draft.** Current local control/evidence fixes are unreleased; no new release is claimed.

**Tagline:** Context before generate. Product before pixels.

---

## One-line pitch

Keep AI work grounded in product intent. Use the available context, resolve the decisions needed now, then apply product design, UI craft and honest critique. Five templates help record decisions; missing files do not prevent useful clarification or provisional drafting.

**Anti-slop** is a capability (evidence-based checks for unsupported scope, misleading content and weak UX), not the product name.

## Why this pack (gap vs UI-only skills)

| Pack type | What it does well | What it often skips |
|-----------|-------------------|---------------------|
| Taste Skill, Hallmark, UI UX Pro Max | Frontend taste, anti-slop visuals, pre-flight | Full product process before pixels |
| **ShipRight** | **5 before-build docs + product-design + ui-ux-design + ux-critique** | Pure brand illustration / logo art |

UI-only packs polish screens. ShipRight forces **product before pixels**: jobs, roles, states, and tickets — then craft — then critique.

## Dual quality bar (ideas we match, text we do not copy)

1. **Taste Skill** — brief inference, design dials, hard pre-flight, not purple SaaS  
2. **UI UX Pro Max** — lean skills + deep references, Avoid lists, states, a11y  
3. **Hallmark-style rigor** — evidence-based checks, named slop tells, honest fail

We paraphrase. We do not copy proprietary skill text.

## Who this is for

- Product designers, POs, and vibe-coders using Claude Design, Figma AI, Google Stitch, Cursor, Codex, Claude Code
- Teams tired of generic “AI purple dashboard” output
- Anyone who wants **context before generate**

## Who this is not for

- Pure backend / infra with no product surface
- Brand illustration or logo art alone
- Inventing fake user research or legal/medical advice

## What’s inside

| Layer | Path | Job |
|-------|------|-----|
| Before-build docs | `docs/01`–`05` | Lock context so AI cannot invent |
| Product decisions | `skills/product-design/` | Flows, states, **decision gate** |
| UI/UX craft | `skills/ui-ux-design/` | Dials + **10-gate pre-flight** + anti-slop |
| Critique | `skills/ux-critique/` | **10-gate ship audit** + severity findings |
| Shared intake | `skills/_shared/intake.md` | Light 0–5 questions when needed (DRY) |
| Shared contract | `skills/_shared/operating-contract.md` | Decision ownership, evidence and readiness |
| Personal taste | `personal-taste/` | Your `.skill` overlays later (do not block drafts) |
| Catalog | `skills.md` | Which skill + prompts |
| Map | `architecture.md` | How the pack is organized |
| Agent rules | `AGENTS.md` | Do / don’t for agents |
| Example | `examples/sample-saas-onboarding/` | Fictional PRD excerpt, inline specification and sample reviews |

## Workflow

Use relevant project context, light intake if needed, product-design, ui-ux-design and specification critique before a decided build handoff. Update relevant tickets. Review the actual generated or implemented result before claiming its readiness. The three specialists and existing 8/10/10 checks remain; this update changes their evidence rules, not their responsibilities.

Missing documents do not block clarification or a provisional draft. Do not invent facts, approved scope or capabilities. Block only commitments that depend on unresolved outcome, scope, access, cost or recovery. Templates full of UNKNOWN are not implementation readiness.

## Quality checks

| Skill | Existing checks | Readiness scope |
| --- | --- | --- |
| product-design | 8 | Product decision/handoff |
| ui-ux-design | 10 | UI specification/pre-flight |
| ux-critique | 10 | The named specification, visual artifact or implementation |

Use **Pass**, **Fail**, **Not verified**, or **Not applicable** with a reason and evidence. A ticket, owner or fix plan never turns a failure into Pass. A screenshot cannot prove keyboard behavior, persistence or release readiness. Apply [the shared operating contract](skills/_shared/operating-contract.md) across all checks.

## Light intake and decision ownership

Read existing context before asking. Zero questions is valid; ask only what changes the next decision, usually one and at most five per round. Do not repeat intake at each skill boundary.

- **You decide** delegates only the named choice.
- **Let me decide** leaves the choice with the user.
- Blank or skipped answers stay unresolved; silence is not approval.
- Latest explicit corrections supersede older product decisions within their scope. Preserve unrelated approvals.

See [shared intake](skills/_shared/intake.md). Optional preferences cannot override truthfulness, accessibility or the user's action limits.

## Personal taste overlays (pending your files)

Folder: `personal-taste/`. Drop Claude / Cursor / ChatGPT preference files later. The pack merges them **without rewriting** core skills. **Do not block drafts** waiting for those files.

## Install (copy-paste ready)

Keep **one** canonical `skills/` folder. Skills use portable `SKILL.md` + `references/` (universal Agent Skills shape). Copy or symlink into your tool:

```bash
# From this pack root (replace /path/to/pack with your real path)
PACK=/path/to/shipright        # or /path/to/shipright-skills (repo root)

# --- Claude Code ---
mkdir -p ~/.claude/skills
ln -s "$PACK/skills/product-design" ~/.claude/skills/product-design
ln -s "$PACK/skills/ui-ux-design"   ~/.claude/skills/ui-ux-design
ln -s "$PACK/skills/ux-critique"    ~/.claude/skills/ux-critique
# Shared intake + personal-taste stay reachable via relative paths inside the pack,
# or copy the whole pack into your project and point skills there.

# Project-scoped Claude (recommended for teams)
mkdir -p .claude/skills
ln -s "$PACK/skills/product-design" .claude/skills/product-design
ln -s "$PACK/skills/ui-ux-design"   .claude/skills/ui-ux-design
ln -s "$PACK/skills/ux-critique"    .claude/skills/ux-critique

# --- Cursor ---
mkdir -p .cursor/skills
ln -s "$PACK/skills/product-design" .cursor/skills/product-design
ln -s "$PACK/skills/ui-ux-design"   .cursor/skills/ui-ux-design
ln -s "$PACK/skills/ux-critique"    .cursor/skills/ux-critique

# --- Codex / Agent Skills ---
mkdir -p .agents/skills
ln -s "$PACK/skills/product-design" .agents/skills/product-design
ln -s "$PACK/skills/ui-ux-design"   .agents/skills/ui-ux-design
ln -s "$PACK/skills/ux-critique"    .agents/skills/ux-critique
# Personal Codex: ~/.codex/skills/ (same three folders)
```

Also open or symlink `AGENTS.md` so the agent knows pack rules:

```bash
ln -s "$PACK/AGENTS.md" ./AGENTS.md
# Optional Claude convention:
ln -s "$PACK/AGENTS.md" ./CLAUDE.md
```

**Universal note:** Each skill is a folder with `SKILL.md` (YAML frontmatter + instructions) and optional `references/`. That shape works across tools that load Agent Skills. Do not fork three divergent copies — symlink or copy from this `skills/` source of truth.

Exact paths can vary by tool version — treat as draft guidance until Altaz says publish yes.

**Suggested repo names (when publishing later):** `shipright` or `shipright-skills`.

## Teaching example (not a benchmark)

See **`examples/sample-saas-onboarding/`**:

- A fictional invite specification with explicitly unresolved checks
- Filled PRD excerpt
- Sample outputs showing evidence, limits and required follow-up; no generated UI is attached

## Three example prompts

**1 — Shape a flow (product-design)**  
> Use the product-design skill. Start with light intake (max 5 questions). Our filled docs are in docs/. Design the invite-teammate flow: happy path, fail path, and a state table. Run the 8-check decision gate. Do not invent features not in the PRD.

**2 — Craft UI (ui-ux-design)**  
> Use the ui-ux-design skill against docs/01–04. Light intake, then one-line design read + dials. Spec empty, loading, error, and success for the onboarding checklist. Run the 10-gate pre-flight for this specification. Evaluate the approved visual direction on its merits. Load personal-taste/ if present.

**3 — Critique before ship (ux-critique)**  
> Use the ux-critique skill. Short intake: what to critique + goal. Run the 10-gate ship audit. List blockers, majors, and polish. Flag AI-slop tells. Suggest rewrite asks — do not invent fake user quotes.

## Boundaries

Follow the shared operating contract for decision authority and readiness.

- **Do not** turn proposed scope, roles or screens into approved requirements
- **Do not** claim user research was done unless sources are listed  
- **Do not** use dark patterns (trick opt-outs, fake urgency, hidden costs)  
- **Do** ask only material unanswered questions and preserve who owns each choice
- **Do** cover applicable empty / loading / error / success / permission-denied behavior
- **Do** resolve critical failures and verify critical requirements before claiming readiness
- **Do** write in simple, clear English  

## Version

- Current: **v0.2.1-draft** (ShipRight rename lock — still DRAFT)
- See [CHANGELOG.md](./CHANGELOG.md)

## Feedback / open items

For Altaz:

- [x] Final product name locked: **ShipRight**  
- [ ] Personal taste `.skill` files for `personal-taste/` when ready  
- [ ] Push or merge this unreleased change set — **only when Altaz says yes**
- [ ] Commit this change set — **only when Altaz says yes**

---

*DRAFT — ShipRight — © 2026 Altaz Lavji — MIT*  
*Context before generate. Product before pixels.*
