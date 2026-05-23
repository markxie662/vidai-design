# VidAI Design - 手动推送到GitHub指南

由于系统权限限制，请手动执行以下命令：

## 方法1：在终端中直接运行

```bash
cd ~/vidai

# 初始化Git仓库
git init

# 配置用户信息（如果还没配置）
git config user.name "Your Name"
git config user.email "your.email@example.com"

# 添加所有文件
git add .

# 创建提交
git commit -m "Initial commit: VidAI Design v0.1.0

- 添加交互式CLI界面
- 支持Seedream/Seedance API调用
- 完善项目文档和说明"

# 添加远程仓库
git remote add origin https://github.com/markx662/vidai-design.git

# 推送到GitHub
git branch -M main
git push -u origin main
```

## 方法2：使用GitHub Desktop（图形界面）

1. 打开 GitHub Desktop
2. 点击 "File" → "Add Local Repository"
3. 选择 `/Users/apple/vidai` 目录
4. 在 "Summary" 输入: "Initial commit: VidAI Design v0.1.0"
5. 点击 "Publish repository"
6. 在 "Name" 输入: `markx662/vidai-design` (已存在则选择)
7. 点击 "Publish"

## 方法3：使用GitHub网页上传

1. 访问 https://github.com/markx662/vidai-design
2. 点击 "uploading an existing file"
3. 拖拽以下文件到仓库：
   - `README.md`
   - `LICENSE`
   - `.gitignore`
   - `Makefile`
   - `bin/` 整个目录
4. 在提交信息框输入：
   ```
   Initial commit: VidAI Design v0.1.0
   
   - 添加交互式CLI界面
   - 支持Seedream/Seedance API调用
   - 完善项目文档和说明
   ```
5. 点击 "Commit changes"

---

**推荐使用方法1（命令行），最快捷！**
