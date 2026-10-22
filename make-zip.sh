#!/usr/bin/env bash
set -e
NAME="AURORA-MOTOR-3D"
rm -rf "/tmp/$NAME" && mkdir -p "/tmp/$NAME"
cp preview.html package.json README.md ASSET-SOURCES.md QA-REPORT.md FEATURE-STATUS.md MOTION-MAP.md UI-UX-NOTES.md "/tmp/$NAME/"
cp -r assets "/tmp/$NAME/assets"
rm -f "$NAME.zip"
( cd /tmp && zip -rq "$OLDPWD/$NAME.zip" "$NAME" -x '*.DS_Store' )
echo "Đã tạo: $NAME.zip"
unzip -l "$NAME.zip" | tail -5
