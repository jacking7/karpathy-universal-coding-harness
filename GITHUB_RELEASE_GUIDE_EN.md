# GitHub Release Guide

This guide shows how to publish this package as a new GitHub repository.

## Prerequisites

Install Git and GitHub CLI, then authenticate:

```bash
gh auth login
```

## Publish a new public repository

```bash
chmod +x publish-github.sh
./publish-github.sh OWNER/REPO_NAME public
```

Example:

```bash
./publish-github.sh sunyoutech/karpathy-universal-coding-harness public
```

## Publish a private repository

```bash
./publish-github.sh OWNER/REPO_NAME private
```

## Suggested repository settings

- Repository name: `karpathy-universal-coding-harness`
- Visibility: `public`
- License: MIT
- Description: `Universal Karpathy-style coding harness for ChatGPT, Gemini, VS Code, Cursor, OpenClaw, Claude Code, and Codex.`
- Initial commit message: `Initial release: universal Karpathy coding harness`

## Agent prompt for publishing

You can give this prompt to a local IDE agent such as Cursor, VS Code, Antigravity, OpenClaw, or Codex:

```text
Unzip `karpathy-universal-coding-harness-repo.zip` from my Downloads folder and publish it as a new GitHub repository.

Requirements:
- repository name: `karpathy-universal-coding-harness`
- visibility: public
- license: MIT
- confirm README.md exists
- run git init if needed
- first commit message: `Initial release: universal Karpathy coding harness`
- if GitHub CLI `gh` is available, use `gh repo create` and push
- if GitHub CLI is not authenticated, guide me through login
- after pushing, show me the repository URL
```
