#!/usr/bin/env bash
set -euo pipefail

REPO_NAME="${1:-}"
VISIBILITY="${2:-public}"

if [[ -z "$REPO_NAME" ]]; then
  echo "사용법: ./publish-github.sh OWNER/REPO_NAME [public|private]"
  echo "예: ./publish-github.sh sunyoutech/karpathy-universal-coding-harness public"
  exit 1
fi

if ! command -v git >/dev/null 2>&1; then
  echo "git 명령어가 없습니다. 먼저 Git을 설치하세요."
  exit 1
fi

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI(gh)가 없습니다. macOS에서는: brew install gh"
  exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
  echo "GitHub 로그인이 필요합니다. 먼저 실행하세요: gh auth login"
  exit 1
fi

if [[ ! -d .git ]]; then
  git init
fi

git add .
if git diff --cached --quiet; then
  echo "커밋할 변경사항이 없습니다."
else
  git commit -m "Initial release: Karpathy universal coding harness"
fi

if [[ "$VISIBILITY" == "private" ]]; then
  VISIBILITY_FLAG="--private"
else
  VISIBILITY_FLAG="--public"
fi

CURRENT_BRANCH="$(git branch --show-current || true)"
if [[ -z "$CURRENT_BRANCH" ]]; then
  git checkout -b main
elif [[ "$CURRENT_BRANCH" != "main" ]]; then
  git branch -M main
fi

if gh repo view "$REPO_NAME" >/dev/null 2>&1; then
  echo "이미 존재하는 저장소입니다: $REPO_NAME"
  if ! git remote get-url origin >/dev/null 2>&1; then
    git remote add origin "https://github.com/$REPO_NAME.git"
  fi
  git push -u origin main
else
  gh repo create "$REPO_NAME" "$VISIBILITY_FLAG" --source=. --remote=origin --push
fi

echo "완료: https://github.com/$REPO_NAME"
