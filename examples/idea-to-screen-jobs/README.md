# Teaching example: rough idea → screen jobs → build pack → review

**Pack:** ShipRight
**Status: Fictional teaching example, not an observed model run.** "Paylane" and every detail below are invented. The user's words are quoted so decision ownership is visible.

This walks one idea through the whole method: outcome → differentiating system → core objects → journey → screen jobs → build handoff → honest critique → preserved decisions. It is shortened. Real runs stop and wait for the user at each approval.

---

## 1. Rough idea (New product depth)

> **User:** "An app that helps freelance designers get paid faster. No docs yet."

**Agent — Frame product (draft v0):**

| Item | Draft | Status |
| --- | --- | --- |
| Outcome | A solo freelance designer gets paid by the due date without chasing by hand | Proposed |
| Differentiating system | Candidate A: final files unlock when the invoice is paid (the client sees watermarked previews). Candidate B: automatic polite reminders. Today designers use invoice templates and chase by email. | Proposed; two candidates |
| Core objects | Project · Deliverable (preview → locked → released) · Invoice (draft → sent → overdue → paid) · Client | Proposed |
| Journey | Create project → upload deliverables → send invoice with previews → client pays → files release | Proposed |
| Screen jobs | Not drafted yet; they depend on the mechanism | Unknown |

> **Agent:** "Reminders alone are what every invoicing tool already does. Candidate A is a different mechanism, because the client's reason to pay is the files. Questions: (1) Which mechanism: A, B or neither? (2) Does money pass through the app, or do clients pay the way they do today? (3) Web only? Want me to research existing tools first? It's optional."

## 2. User decisions

> **User:** "A. Clients pay by card inside the app. Web only. Skip research."
>
> **Agent:** "Got it. One check: is the outcome line right as written?"
>
> **User:** "Yes."

| ID | Decision | Status | Source |
| --- | --- | --- | --- |
| D1 | Outcome as drafted | Approved | User: "Yes" |
| D2 | Mechanism: files unlock when paid | Approved | "A" |
| D3 | Card payment inside the app | Approved; payment provider still Unresolved | User |
| D4 | Web only | Approved | User |
| D5 | Opportunity research | Declined | User; not run |
| D6 | Reminder schedule | Unresolved | Not discussed |

## 3. Screen jobs (from the approved frame)

| Screen | Screen job (one sentence) | Objects shown |
| --- | --- | --- |
| S1 Projects | The designer sees which projects are waiting on payment and what to do next | Project, Invoice status |
| S2 Project | The designer uploads deliverables and sends one invoice with previews | Deliverable, Invoice |
| S3 Client view | The client reviews watermarked previews and pays to unlock the files | Deliverable (preview), Invoice |

Each screen then gets flows and states in product-design (not shown in full). Example of one decided state on S3: **Payment failed** → the card error is shown, previews stay visible, files stay locked, and **Try again** keeps the entered details except the card number.

## 4. Design direction (Establish mode, New product)

> **User:** "Feeling: calm and professional. Reference: Linear's settings pages for spacing, Stripe Checkout for the pay step."

| Reference | Borrow (pattern, not look) | Reject |
| --- | --- | --- |
| Linear settings | Generous spacing, one column, quiet chrome | Its brand colors and type |
| Stripe Checkout | One clear pay action, the amount repeated on the button | Its layout wholesale; the product brand must stay distinct |

Tokens stay **Proposed** until the user approves them (not shown).

## 5. Build handoff pack (excerpt)

**Rules block (pasted once into the tool's rules file):**
- Outcome: designers get paid by the due date. Mechanism: files unlock only after payment.
- Objects: Project, Deliverable (preview → locked → released), Invoice (draft → sent → overdue → paid), Client.
- Hard rules: only screens S1–S3; no invented nav, testimonials or metrics; every listed state; AA contrast; keyboard reachable.
- Do not resolve: payment provider (D3), reminder schedule (D6).

**S3 prompt (excerpt):** Screen job: the client reviews watermarked previews and pays to unlock the files. Structure top → bottom: project name and designer; preview grid (watermarked); amount due; one primary action "Pay $[amount] and unlock files". States: loading previews, payment processing, payment failed (see above), paid → files released with download actions, link expired. Do not add: accounts for clients, tipping, upsells. Build desktop and mobile.

## 6. Review of what was built

> **User:** "Cursor built S3. Desktop and 390px screenshots attached."

**Verdict: Fix first.** On mobile the pay button sits below four full-width previews, so the client must scroll past all of them to pay. The previews and the locked state look right on desktop. Keyboard, focus and the payment-failed state were not shown, so they are **Not verified**, not Pass.

- **B1 — Blocker (visual artifact):** at 390px the primary action is not visible without scrolling past every preview; the screen job is "review and pay". Rewrite ask: sticky pay bar with the amount on mobile. Retest at 390px.
- **Not verified:** payment failed, link expired, keyboard and focus. Need a running build or screenshots of those states.

Fix pass 1 of 2 at most. D3 and D6 stay Unresolved; the build did not decide them.

---

## What this example teaches

1. Frame before flows: the mechanism (files unlock when paid) shapes every screen.
2. A feature ("reminders") is challenged when it isn't a differentiator.
3. Research is offered, not forced; declining it is respected.
4. Every screen traces to a screen job and objects from the frame.
5. The build pack tells the tool what not to decide.
6. A screenshot review is honest about what it cannot show.

It does not prove output quality, runtime behavior or installation reliability.
