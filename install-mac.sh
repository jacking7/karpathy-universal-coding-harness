#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-$(pwd)}"
PACK_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$TARGET/.github"
mkdir -p "$TARGET/.cursor/rules"
mkdir -p "$TARGET/skills/karpathy-guidelines"

cp "$PACK_DIR/AGENTS.md" "$TARGET/AGENTS.md"
cp "$PACK_DIR/CLAUDE.md" "$TARGET/CLAUDE.md"
cp "$PACK_DIR/.github/copilot-instructions.md" "$TARGET/.github/copilot-instructions.md"
cp "$PACK_DIR/.cursor/rules/karpathy-guidelines.mdc" "$TARGET/.cursor/rules/karpathy-guidelines.mdc"
cp "$PACK_DIR/skills/karpathy-guidelines/SKILL.md" "$TARGET/skills/karpathy-guidelines/SKILL.md"

cat <<MSG
설치 완료: $TARGET

설치된 파일:
- AGENTS.md                  # Codex / 공통 에이전트 지침
- CLAUDE.md                  # Claude Code 지침
- .github/copilot-instructions.md  # VS Code Copilot 지침
- .cursor/rules/karpathy-guidelines.mdc  # Cursor Rule
- skills/karpathy-guidelines/SKILL.md    # OpenClaw / Claude / Codex 계열 Skill

ChatGPT, Gemini, Antigravity는 APPLY_GUIDE_KO.md를 보고 앱 안에 직접 붙여넣으세요.
MSG
