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

---

# 한국어 설명


`andrej-karpathy-skills`에서 영감을 받은 **범용 AI 코딩 에이전트 하네스 패키지**입니다.

이 저장소는 ChatGPT, Gemini, VS Code, Cursor, Antigravity, OpenClaw, Claude Code, Codex에서 같은 코딩 원칙을 사용할 수 있도록 도구별 파일 형식으로 정리한 패키지입니다.

## 이 패키지가 하는 일

AI 코딩 에이전트가 아래 작업 흐름을 따르도록 합니다.

1. 코딩 전에 먼저 생각하기
2. 가장 단순하게 동작하는 해결책 우선
3. 필요한 부분만 최소 수정
4. 관련 없는 리팩터링 금지
5. 수정 전 목표와 성공 기준 정의
6. 수정 후 검증 방법 제시
7. 변경 내용 요약

이 패키지는 모든 도구에서 하나의 플러그인처럼 실행되는 파일이 아닙니다. 같은 원칙을 각 도구가 읽을 수 있는 형식으로 바꿔둔 **멀티 포맷 하네스 팩**입니다.

## 지원 도구

| 도구 | 적용 방식 | 주요 파일 |
|---|---|---|
| ChatGPT | Project Instructions / Custom GPT Instructions | `chatgpt/` |
| Gemini | Gem Instructions | `gemini/` |
| VS Code | GitHub Copilot Instructions | `.github/copilot-instructions.md` |
| Cursor | Project Rules | `.cursor/rules/karpathy-guidelines.mdc` |
| Antigravity | Rules / Workflows | `antigravity/rules/` |
| OpenClaw | Skill | `skills/karpathy-guidelines/SKILL.md` |
| Claude Code | `CLAUDE.md` + Skill | `CLAUDE.md`, `claude/` |
| Codex | `AGENTS.md` + Skill | `AGENTS.md`, `codex/` |

## 빠른 설치

프로젝트 폴더에 하네스 파일을 적용하려면:

```bash
chmod +x install-mac.sh
./install-mac.sh /적용할/프로젝트/경로
```

현재 폴더에 적용하려면:

```bash
./install-mac.sh
```

설치 스크립트는 아래 파일을 프로젝트로 복사합니다.

```text
AGENTS.md
CLAUDE.md
.github/copilot-instructions.md
.cursor/rules/karpathy-guidelines.mdc
skills/karpathy-guidelines/SKILL.md
```

## 수동 적용

### Codex

프로젝트 루트에 아래 파일을 둡니다.

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

### OpenClaw / Claude / Skill 지원 도구

```text
skills/karpathy-guidelines/SKILL.md
```

### ChatGPT / Gemini / Antigravity

각 앱의 Instructions 또는 Rules 영역에 아래 폴더의 전용 파일 내용을 복사해서 붙여넣습니다.

```text
chatgpt/
gemini/
antigravity/
```

자세한 설명은 `APPLY_GUIDE_KO.md`와 `APPLY_GUIDE_EN.md`를 참고하세요.

## 저장소 구조

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

## GitHub 배포

GitHub CLI를 사용한다면:

```bash
chmod +x publish-github.sh
./publish-github.sh OWNER/REPO_NAME public
```

예:

```bash
./publish-github.sh sunyoutech/karpathy-universal-coding-harness public
```

## 라이선스

MIT License입니다. 누구나 사용, 복사, 수정, 병합, 게시, 배포, 재라이선스, 판매할 수 있습니다. 단, 라이선스 고지문은 포함해야 합니다.

공식 라이선스 원문은 `LICENSE`에 있고, 한국어 참고 번역은 `LICENSE_KO.md`에 있습니다.

## 원본 아이디어

이 패키지는 `andrej-karpathy-skills`의 코딩 에이전트 행동 원칙에서 영감을 받아 여러 AI 코딩 환경에서 사용할 수 있도록 재구성한 범용 하네스입니다.
