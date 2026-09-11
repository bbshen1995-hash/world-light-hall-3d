#!/bin/zsh
# 重新建置公開版並推上 GitHub Pages（不含有會友入鏡的照片視角）
cd "$(dirname "$0")"
( cd ~/Downloads/church-hall-3d && OUT="$HOME/Downloads/主堂3D-build/index.html" SHOTS=match/shots_public.json ./build.sh )
git add -A
git commit -m "更新主堂 3D $(date '+%Y-%m-%d %H:%M')" || echo "沒有變更"
git push
echo "完成，約一分鐘後生效：https://bbshen1995-hash.github.io/world-light-hall-3d/"
