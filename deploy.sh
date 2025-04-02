#!/bin/bash
set -e
trap 'echo "❌ 에러 발생. 배포 중단됨."' ERR

BRANCH=${1:-main}

echo "📥 Pulling latest code from branch: $BRANCH"
git pull origin $BRANCH
git submodule sync
git submodule update --remote --merge

echo "🐳 Restarting Docker..."
docker compose down --remove-orphans
docker compose build --no-cache
docker compose up -d

echo "✅ 배포 완료!"
