# VidAI Design - GitHub项目设置指南

## 📦 项目信息
- **仓库名称**: vidai-design
- **描述**: AI-Powered Video Creation Tool based on Seedance 2.0
- **许可证**: MIT License

## 🚀 创建步骤

### 第一步：创建GitHub仓库

1. 访问 https://github.com/new
2. 填写项目信息：
   - Repository name: `vidai-design`
   - Description: `AI-Powered Video Creation Tool based on Seedance 2.0`
   - 选择 License: `MIT License`
   - **重要**: 不要勾选 "Initialize this repository with a README"
3. 点击 "Create repository"

### 第二步：初始化本地Git并推送

```bash
# 进入项目目录
cd ~/vidai

# 初始化Git仓库
git init

# 添加所有文件
git add .

# 创建首次提交
git commit -m "Initial commit: VidAI Design v0.1.0

- 添加交互式CLI界面
- 支持Seedream/Seedance API调用  
- 完善项目文档和说明

Co-Authored-By: Claude Opus 4.7 <noreply@anthropic.com>"

# 添加远程仓库（替换YOUR_USERNAME）
git remote add origin https://github.com/YOUR_USERNAME/vidai-design.git

# 推送到GitHub
git branch -M main
git push -u origin main
```

### 第三步：验证

访问你的仓库地址：
```
https://github.com/YOUR_USERNAME/vidai-design
```

## 📝 项目文件说明

```
vidai-design/
├── bin/vidai-interactive    # 主程序（可执行）
├── README.md                 # 项目说明
├── LICENSE                   # MIT许可证
├── .gitignore               # Git忽略文件
├── Makefile                 # 构建脚本
└── SETUP_GUIDE.md           # 本指南
```

## 🎯 下一步

推送完成后，你可以：

1. **添加项目 Topics**:
   - 在GitHub仓库页面点击 Settings
   - 滚动到 Topics 部分
   - 添加: `ai-video`, `seedance`, `cli-tool`, `video-generation`

2. **配置仓库描述**:
   - 点击 About 部分
   - 添加网站链接、标签等

3. **创建 Releases**:
   - 发布新版本时创建 GitHub Release
   - 上传编译好的二进制文件

## ⚠️ 常见问题

### Q: 推送时提示权限错误
A: 检查是否使用SSH密钥或Personal Access Token

### Q: 如何更新项目？
A: 
```bash
git add .
git commit -m "update: 更新说明"
git push
```

### Q: 如何协作开发？
A: 
- Fork仓库到你的账号
- 创建分支进行修改
- 提交 Pull Request

---

准备好后告诉我，我会帮你配置后续功能！
