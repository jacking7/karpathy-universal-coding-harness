# Karpathy Universal Coding Harness

A universal coding-agent harness inspired by `andrej-karpathy-skills`.

This repository packages the same core coding discipline for multiple AI coding tools and IDEs: ChatGPT, Gemini, VS Code, Cursor, Antigravity, OpenClaw, Claude Code, and Codex.

## What this does

It helps AI coding agents follow a safer, reviewable workflow:

1. Think before coding.
2. Prefer the simplest working solution.
3. Make surgical, minimal changes.
4. Avoid unrelated refactors.
5. Define the goal and success criteria before editing.
6. Provide verification steps after changes.
7. Summarize what changed.

This is not a single runtime plugin for every tool. It is a multi-format harness pack: each tool receives the same principles in the format it understands.

## Supported tools

| Tool | Application method | Main files |
|---|---|---|
| ChatGPT | Project Instructions / Custom GPT Instructions | `chatgpt/` |
| Gemini | Gem Instructions | `gemini/` |
| VS Code | GitHub Copilot Instructions | `.github/copilot-instructions.md` |
| Cursor | Project Rules | `.cursor/rules/karpathy-guidelines.mdc` |
| Antigravity | Rules / Workflows | `antigravity/rules/` |
| OpenClaw | Skill | `skills/karpathy-guidelines/SKILL.md` |
| Claude Code | `CLAUDE.md` + Skill | `CLAUDE.md`, `claude/` |
| Codex | `AGENTS.md` + Skill | `AGENTS.md`, `codex/` |

## Quick install

Apply the harness files to a project:

```bash
chmod +x install-mac.sh
./install-mac.sh /path/to/your/project
```

Apply to the current directory:

```bash
./install-mac.sh
```

The installer copies these files into your project:

```text
AGENTS.md
CLAUDE.md
.github/copilot-instructions.md
.cursor/rules/karpathy-guidelines.mdc
skills/karpathy-guidelines/SKILL.md
```

## Manual install

### Codex

Place these files at the project root:

```text
AGENTS.md
skills/karpathy-guidelines/SKILL.md
```

### VS Code Copilot

```text
.github/copilot-instructions.md
```

### Cursor

```text
.cursor/rules/karpathy-guidelines.mdc
```

### OpenClaw / Claude / Skill-compatible tools

```text
skills/karpathy-guidelines/SKILL.md
```

### ChatGPT / Gemini / Antigravity

Copy the appropriate instruction file into the app's instruction/rules area:

```text
chatgpt/
gemini/
antigravity/
```

See `APPLY_GUIDE_EN.md` and `APPLY_GUIDE_KO.md` for details.

## Repository structure

```text
.
├─ README.md
├─ README_EN.md
├─ README_KO.md
├─ APPLY_GUIDE_EN.md
├─ APPLY_GUIDE_KO.md
├─ GITHUB_RELEASE_GUIDE_EN.md
├─ GITHUB_RELEASE_GUIDE_KO.md
├─ LICENSE
├─ LICENSE_KO.md
├─ install-mac.sh
├─ publish-github.sh
├─ AGENTS.md
├─ CLAUDE.md
├─ .github/
│  └─ copilot-instructions.md
├─ .cursor/
│  └─ rules/
│     └─ karpathy-guidelines.mdc
├─ skills/
│  └─ karpathy-guidelines/
│     └─ SKILL.md
├─ chatgpt/
├─ gemini/
├─ vscode/
├─ cursor/
├─ antigravity/
├─ openclaw/
├─ claude/
└─ codex/
```

## Publish to GitHub

With GitHub CLI:

```bash
chmod +x publish-github.sh
./publish-github.sh OWNER/REPO_NAME public
```

Example:

```bash
./publish-github.sh sunyoutech/karpathy-universal-coding-harness public
```

## License

MIT License. You may use, copy, modify, merge, publish, distribute, sublicense, and sell copies of this software, provided that the license notice is included.

See `LICENSE` for the official English license text and `LICENSE_KO.md` for a Korean reference translation.

## Origin

This package is inspired by the coding-agent behavior principles from `andrej-karpathy-skills` and repackages them into a universal harness for multiple AI coding environments.
