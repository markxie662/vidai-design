#!/bin/bash
# 使用 SSH 方式推送到 GitHub

cd ~/vidai

echo "🔄 切换到 SSH 方式..."
git remote set-url origin git@github.com:markxie662/vidai-design.git

echo "📤 推送到 GitHub..."
git push

if [ $? -eq 0 ]; then
    echo "✅ 推送成功！"
else
    echo "❌ 推送失败"
    echo ""
    echo "💡 如果 SSH 密钥未配置，请运行："
    echo "   gh auth login"
    echo "   然后选择: SSH"
fi
