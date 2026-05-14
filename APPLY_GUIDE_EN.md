# Application Guide

This guide explains how to apply the Karpathy Universal Coding Harness to each tool.

## 1. Tools installed by file copy

The following tools read files from your project directory. Running `install-mac.sh` installs the common files automatically.

### Codex

Place these files at the project root:

```text
AGENTS.md
skills/karpathy-guidelines/SKILL.md
```

`AGENTS.md` is the general project instruction file. `SKILL.md` is the reusable skill-style instruction file.

### VS Code Copilot

Place this file at the project root:

```text
.github/copilot-instructions.md
```

### Cursor

Place this file at the project root:

```text
.cursor/rules/karpathy-guidelines.mdc
```

### OpenClaw

Place this file at the project root:

```text
skills/karpathy-guidelines/SKILL.md
```

For global use on macOS, you may also copy it to:

```text
~/.openclaw/skills/karpathy-guidelines/SKILL.md
```

### Claude Code

Place these files at the project root:

```text
CLAUDE.md
skills/karpathy-guidelines/SKILL.md
```

## 2. Tools that require copy and paste

These tools need you to paste the relevant file into the app's instruction/rule UI.

### ChatGPT Project

Create or open a ChatGPT Project, then paste this file into Project Instructions:

```text
chatgpt/project-instructions.md
```

### Custom GPT

Create a GPT, then paste this file into the GPT Instructions field:

```text
chatgpt/custom-gpt-instructions.md
```

### Gemini Gem

Create a Gem in Gemini, then paste this file into the Gem Instructions field:

```text
gemini/gem-instructions.md
```

### Antigravity

Create a Rule or Workflow and paste this file:

```text
antigravity/rules/karpathy-guidelines.md
```

## 3. Recommended workflow

For a project using multiple coding agents:

```bash
./install-mac.sh /path/to/your/project
```

Then manually paste the ChatGPT, Gemini, and Antigravity instruction files into their apps.
