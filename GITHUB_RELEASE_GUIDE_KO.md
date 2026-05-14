# GitHub 배포 가이드

이 문서는 이 패키지를 새 GitHub repository로 배포하는 방법을 설명합니다.

## 사전 준비

Git과 GitHub CLI를 설치한 뒤 로그인합니다.

```bash
gh auth login
```

## 새 public repository로 배포

```bash
chmod +x publish-github.sh
./publish-github.sh OWNER/REPO_NAME public
```

예:

```bash
./publish-github.sh sunyoutech/karpathy-universal-coding-harness public
```

## private repository로 배포

```bash
./publish-github.sh OWNER/REPO_NAME private
```

## 추천 repository 설정

- Repository name: `karpathy-universal-coding-harness`
- Visibility: `public`
- License: MIT
- Description: `Universal Karpathy-style coding harness for ChatGPT, Gemini, VS Code, Cursor, OpenClaw, Claude Code, and Codex.`
- Initial commit message: `Initial release: universal Karpathy coding harness`

## 로컬 IDE Agent에게 줄 배포 요청문

Cursor, VS Code, Antigravity, OpenClaw, Codex 같은 로컬 Agent에게 아래 문장을 그대로 줄 수 있습니다.

```text
내 Downloads 폴더에 있는 `karpathy-universal-coding-harness-repo.zip`을 풀고, 새 GitHub repository로 배포해줘.

조건:
- repo 이름: `karpathy-universal-coding-harness`
- visibility: public
- license: MIT
- README.md 포함 여부 확인
- git init
- 첫 커밋 메시지: `Initial release: universal Karpathy coding harness`
- GitHub CLI `gh`가 설치되어 있으면 `gh repo create`로 생성하고 push
- gh 로그인이 안 되어 있으면 내가 로그인할 수 있게 안내
- 푸시 후 repository URL 알려줘
```
