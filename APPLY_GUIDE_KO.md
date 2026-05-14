# 적용 가이드

이 문서는 Karpathy Universal Coding Harness를 각 도구에 적용하는 방법을 설명합니다.

## 1. 파일 복사로 적용되는 도구

아래 도구들은 프로젝트 폴더 안의 파일을 읽습니다. `install-mac.sh`를 실행하면 공통 파일이 자동 설치됩니다.

### Codex

프로젝트 루트에 아래 파일을 둡니다.

```text
AGENTS.md
skills/karpathy-guidelines/SKILL.md
```

`AGENTS.md`는 프로젝트 전체 지침 파일이고, `SKILL.md`는 재사용 가능한 Skill 형식 지침 파일입니다.

### VS Code Copilot

프로젝트 루트에 아래 파일을 둡니다.

```text
.github/copilot-instructions.md
```

### Cursor

프로젝트 루트에 아래 파일을 둡니다.

```text
.cursor/rules/karpathy-guidelines.mdc
```

### OpenClaw

프로젝트 루트에 아래 파일을 둡니다.

```text
skills/karpathy-guidelines/SKILL.md
```

Mac에서 전역으로 쓰려면 아래 경로에도 복사할 수 있습니다.

```text
~/.openclaw/skills/karpathy-guidelines/SKILL.md
```

### Claude Code

프로젝트 루트에 아래 파일을 둡니다.

```text
CLAUDE.md
skills/karpathy-guidelines/SKILL.md
```

## 2. 직접 붙여넣어야 하는 도구

아래 도구들은 앱 내부의 지침/규칙 입력창에 전용 파일 내용을 붙여넣어야 합니다.

### ChatGPT Project

ChatGPT에서 Project를 만들거나 열고, Project Instructions에 아래 파일 내용을 붙여넣습니다.

```text
chatgpt/project-instructions.md
```

### Custom GPT

GPT 만들기 화면의 Instructions에 아래 파일 내용을 붙여넣습니다.

```text
chatgpt/custom-gpt-instructions.md
```

### Gemini Gem

Gemini에서 Gem을 만들고, Gem Instructions에 아래 파일 내용을 붙여넣습니다.

```text
gemini/gem-instructions.md
```

### Antigravity

Rule 또는 Workflow를 만들고 아래 파일 내용을 붙여넣습니다.

```text
antigravity/rules/karpathy-guidelines.md
```

## 3. 추천 사용 방식

여러 코딩 에이전트를 함께 쓰는 프로젝트라면 먼저 아래 명령을 실행하세요.

```bash
./install-mac.sh /내프로젝트
```

그 다음 ChatGPT, Gemini, Antigravity에는 각각 전용 파일 내용을 앱 안에 복사해서 붙여넣으면 됩니다.
