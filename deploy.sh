#!/bin/bash
set -e  # 에러 발생 시 즉시 스크립트 종료

echo "📥 Pulling latest code..."
git pull origin main
git submodule sync
git submodule update --remote --merge

echo "🐳 Restarting Docker..."
docker-compose down
docker-compose build
docker-compose up -d

echo "✅ 배포 완료!"
