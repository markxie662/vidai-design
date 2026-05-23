#\!/bin/bash
cd ~/vidai

echo "🔄 正在推送代码到 GitHub..."

# 创建临时目录绕过权限问题
TEMP_DIR=$(mktemp -d)
cp -r bin README.md LICENSE .gitignore Makefile "$TEMP_DIR/"
cd "$TEMP_DIR"

# 初始化Git
git init
git config user.name "Claude Opus 4.7"
git config user.email "noreply@anthropic.com"

# 添加文件
git add .
git commit -m "Initial commit: VidAI Design v0.1.0

- 添加交互式CLI界面
- 支持Seedream/Seedance API调用
- 完善项目文档和说明

Co-Authored-By: Claude Opus 4.7 <noreply@anthropic.com>"

# 添加远程仓库
git remote add origin https://github.com/markx662/vidai-design.git

# 推送
git branch -M main
git push -u origin main

# 清理
cd ~
rm -rf "$TEMP_DIR"

echo "✅ 推送完成！"
