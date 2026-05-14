# Karpathy Universal Coding Harness

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

## 원본 아이디어와 존경

이 패키지는 [`multica-ai/andrej-karpathy-skills`](https://github.com/multica-ai/andrej-karpathy-skills)에 깊은 감명을 받아 만들었습니다.

해당 프로젝트는 Andrej Karpathy가 지적한 LLM 코딩의 함정들을 실제 코딩 에이전트 지침으로 매우 명확하게 정리했습니다. AI 코딩 에이전트가 더 안전하고, 단순하고, 리뷰하기 쉬운 방식으로 일하도록 만드는 핵심을 잘 포착했다는 점에서 큰 존경을 표합니다.

이 저장소는 그 문제의식과 정신을 바탕으로, ChatGPT, Gemini, VS Code, Cursor, Antigravity, OpenClaw, Claude Code, Codex 등 여러 환경에서 사용할 수 있도록 재구성한 작은 확장판입니다.

원본 통찰과 영감에 대한 모든 존경과 감사는 Andrej Karpathy의 관찰과 `andrej-karpathy-skills` 프로젝트에 있습니다.

## AI 사용 고지

이 저장소는 AI 도구의 도움을 받아 만들었습니다. 구조 설계, 문서 작성, 스크립트 구성, 여러 도구용 지침 파일 정리는 AI-assisted development 방식으로 초안을 만들고 다듬었으며, 전체 방향과 검토, 의도는 사람이 결정했습니다.
