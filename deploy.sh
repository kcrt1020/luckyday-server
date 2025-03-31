#!/bin/bash

echo "📥 Pulling latest code..."
git pull origin main
git submodule sync
git submodule update --remote --merge

echo "🐳 Restarting Docker..."
docker-compose down
docker-compose build
docker-compose up -d

echo "✅ 배포 완료!"
