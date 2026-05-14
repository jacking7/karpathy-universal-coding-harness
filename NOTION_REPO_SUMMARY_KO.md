# Karpathy Universal Coding Harness repo 정리

## 한 줄 요약

`karpathy-universal-coding-harness-repo`는 여러 AI 코딩 도구가 같은 코딩 원칙을 따르도록 지침 파일을 도구별 형식으로 패키징한 범용 하네스 저장소다.

## 목적

이 repo의 목표는 ChatGPT, Gemini, VS Code Copilot, Cursor, Antigravity, OpenClaw, Claude Code, Codex에서 공통된 코딩 작업 원칙을 쓰게 하는 것이다.

핵심 원칙은 다음과 같다.

- 코딩 전에 먼저 목표와 성공 기준을 생각한다.
- 가장 단순하게 동작하는 해결책을 우선한다.
- 필요한 부분만 작게 수정한다.
- 관련 없는 리팩터링을 피한다.
- 수정 후 검증 방법과 변경 내용을 명확히 남긴다.

## 현재 repo 위치

```bash
/Users/bca/Dev/karpathy-universal-coding-harness-repo
```

## 주요 파일

| 파일 | 역할 |
|---|---|
| `README.md` | 영어와 한국어가 함께 있는 메인 설명 |
| `README_KO.md` | 한국어 전용 설명 |
| `README_EN.md` | 영어 전용 설명 |
| `APPLY_GUIDE_KO.md` | 도구별 적용 방법 한국어 가이드 |
| `APPLY_GUIDE_EN.md` | 도구별 적용 방법 영어 가이드 |
| `install-mac.sh` | 프로젝트에 핵심 하네스 파일을 복사하는 macOS 설치 스크립트 |
| `publish-github.sh` | GitHub CLI로 repo를 생성/푸시하는 배포 스크립트 |
| `AGENTS.md` | Codex 및 공통 에이전트 지침 |
| `CLAUDE.md` | Claude Code용 지침 |
| `common/karpathy-guidelines.md` | 공통 원칙 원문 |
| `LICENSE` | MIT License 원문 |
| `LICENSE_KO.md` | MIT License 한국어 참고 번역 |

## 지원 도구와 적용 파일

| 도구 | 적용 방식 | 주요 파일 |
|---|---|---|
| ChatGPT | Project Instructions 또는 Custom GPT Instructions에 붙여넣기 | `chatgpt/` |
| Gemini | Gem Instructions에 붙여넣기 | `gemini/gem-instructions.md` |
| VS Code Copilot | 프로젝트 루트의 Copilot instructions | `.github/copilot-instructions.md` |
| Cursor | 프로젝트 루트의 Cursor rule | `.cursor/rules/karpathy-guidelines.mdc` |
| Antigravity | Rules 또는 Workflow에 붙여넣기 | `antigravity/rules/karpathy-guidelines.md` |
| OpenClaw | Skill 파일 | `skills/karpathy-guidelines/SKILL.md` |
| Claude Code | `CLAUDE.md`와 Skill 파일 | `CLAUDE.md`, `claude/` |
| Codex | `AGENTS.md`와 Skill 파일 | `AGENTS.md`, `codex/` |

## 설치 스크립트 동작

`install-mac.sh`는 대상 프로젝트에 아래 파일들을 복사한다.

```text
AGENTS.md
CLAUDE.md
.github/copilot-instructions.md
.cursor/rules/karpathy-guidelines.mdc
skills/karpathy-guidelines/SKILL.md
```

실행 예시는 다음과 같다.

```bash
chmod +x install-mac.sh
./install-mac.sh /path/to/project
```

현재 폴더에 적용하려면 다음처럼 실행한다.

```bash
./install-mac.sh
```

주의할 점은 하네스 repo 안에서 대상 경로 없이 실행하면 자기 자신에게 복사하려고 할 수 있다는 것이다. 실제 프로젝트에 적용할 때는 대상 프로젝트 경로를 명시하는 편이 안전하다.

## 직접 붙여넣어야 하는 도구

아래 도구들은 설치 스크립트로 자동 적용되지 않고 앱 안의 지침/규칙 입력창에 직접 붙여넣어야 한다.

- ChatGPT Project: `chatgpt/project-instructions.md`
- Custom GPT: `chatgpt/custom-gpt-instructions.md`
- Gemini Gem: `gemini/gem-instructions.md`
- Antigravity: `antigravity/rules/karpathy-guidelines.md`

## 배포 스크립트

`publish-github.sh`는 GitHub CLI(`gh`)를 사용해 repo를 초기화하고 GitHub에 public/private 저장소로 배포한다.

사용법:

```bash
./publish-github.sh OWNER/REPO_NAME [public|private]
```

예시:

```bash
./publish-github.sh sunyoutech/karpathy-universal-coding-harness public
```

필요 조건:

- `git` 설치
- GitHub CLI `gh` 설치
- `gh auth login`으로 로그인 완료

## 현재 확인한 상태

- repo는 여러 도구용 지침 파일을 이미 포함하고 있다.
- `install-mac.sh`는 VS Code, Cursor, Codex, Claude/OpenClaw 계열 핵심 파일을 설치한다.
- ChatGPT, Gemini, Antigravity는 앱 내부에 직접 붙여넣는 방식이다.
- 이전 작업에서 `/Users/bca/02_MA_code/UINETWORKS_CHATBOT`에 하네스 핵심 파일이 설치되어 있고 원본과 일치함을 확인했다.
- Antigravity용 워크스페이스 규칙 파일은 별도로 `.agents/rules/karpathy-guidelines.md` 위치에 추가할 수 있음을 확인했다.

## 남은 작업 후보

- GitHub 원격 저장소 생성 및 첫 배포 여부 결정
- README의 영어/한국어 중복 구조를 유지할지, 분리 링크 중심으로 정리할지 결정
- Antigravity용 자동 설치까지 `install-mac.sh`에 포함할지 결정
- 각 도구별 적용 화면 스크린샷 또는 짧은 튜토리얼 추가 여부 결정
- Notion 커넥터 연결이 가능해지면 이 문서를 Notion 페이지로 업로드

## Notion 업로드 상태

Notion 앱 연결이 완료되지 않아 Codex가 직접 Notion 페이지를 생성하지는 못했다. 대신 이 파일을 Notion에 Markdown으로 import하거나 페이지에 그대로 붙여넣으면 된다.
