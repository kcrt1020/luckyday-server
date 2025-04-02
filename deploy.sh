#!/bin/bash
set -e
trap 'echo "❌ 에러 발생. 배포 중단됨."' ERR

BRANCH=${1:-main}

echo "📥 강제 초기화 후 최신 코드 가져오는 중..."
git reset --hard HEAD
git pull origin $BRANCH
git submodule sync
git submodule update --remote --merge

echo "🐳 Docker 재시작 중..."
docker compose down --remove-orphans
docker compose build --no-cache
docker compose up -d

echo "✅ 배포 완료!"
