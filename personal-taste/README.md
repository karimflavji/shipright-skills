# Personal taste overlays — ShipRight

**Status: Optional.** Do not block work waiting for these files.

## What this folder is for

Drop your own taste / preference files here. Typical sources:

- Claude skill markdown exports
- Cursor rules or skill files
- ChatGPT custom instructions or style notes

The pack applies a **selected** profile as an overlay. It does **not** rewrite the three core skills (`product-design`, `ui-ux-design`, `ux-critique`) or apply every bundled profile to every user.

## Available profile

[Altaz's product design preferences](altaz.md): simple organized screens, restrained branding in working tools, little repetition, discoverable help, useful review summaries, clear progress/exits and an 8-point layout default. Existing approved design systems take precedence.

Select it once in a conversation or in the project's existing instructions:

> Use ShipRight with `personal-taste/altaz.md` as my design preference profile.

Selection carries through the current project/session. A new conversation without those project instructions needs the profile selected again; the pack does not claim persistent memory. Other users may select this profile or supply their own. Merely cloning this repository does not enable Altaz's taste.

## How agents should use this folder

1. Read this selection guidance when using a personal profile. Load only the file selected by the user or project instructions, including a user-supplied profile. Do not infer selection from a repository owner, example, file presence or filename alone.
2. Prefer the selected profile's preferences over pack defaults for:
   - Visual direction (calm vs bold, density, motion)
   - Patterns you want banned
   - Brand / type / spacing habits
3. Current explicit project decisions and the shared operating contract take precedence. Taste cannot authorize scope, fabricate evidence or waive usable access to critical controls.
4. If no profile is selected, use the current project direction and pack defaults. Do not add a question or pause solely because profiles are available.
5. State the selected profile briefly when applying it. Do not rerequest selection at each skill boundary. If the requested profile is unavailable, say so and continue independent work with existing project direction.

## Installation and handoff

Keep the selected file accessible alongside the full pack, or provide its contents/path with the task. An installation containing only `skills/` may omit this folder; it cannot apply a file it cannot read. A selected profile is a preference source, not a standalone skill, new approval authority or permission to edit unrelated projects.

## Suggested drop names (optional)

```text
personal-taste/
├── README.md                 # this file
├── my-taste.md               # any clear name is fine
├── cursor-preferences.md
└── chatgpt-style-notes.md
```

---

*Public draft — personal-taste/ — ShipRight*
