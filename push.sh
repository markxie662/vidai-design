#!/bin/bash
# VidAI Design - GitHub 推送脚本

echo "📤 推送 VidAI Design 到 GitHub..."
echo ""

cd ~/vidai

# 检查是否有未提交的更改
if [ -n "$(git status --porcelain)" ]; then
    echo "⚠️  检测到未提交的更改，请先提交"
    git status
    exit 1
fi

# 显示待推送的提交
echo "📋 待推送的提交："
git log --oneline origin/main..HEAD 2>/dev/null || git log --oneline -10
echo ""

# 推送
echo "🚀 开始推送..."
git push

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 推送成功！"
    echo "🌐 仓库地址: https://github.com/markxie662/vidai-design"
else
    echo ""
    echo "❌ 推送失败"
    echo ""
    echo "💡 解决方案："
    echo "   1. 确保代理服务运行在 127.0.0.1:7890"
    echo "   2. 或使用 SSH: git remote set-url origin git@github.com:markxie662/vidai-design.git"
    echo "   3. 或配置 hosts: 140.82.112.3 github.com"
fi
