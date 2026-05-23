# VidAI Design - AI-Powered Video Creation Tool

> 基于豆包 Seedance 2.0 的专业AI视频生成CLI工具

## ✨ 特性

- 🎨 **智能图片生成** - 通过 Seedream API 生成高质量图片
- 🎬 **专业视频创作** - 使用 Seedance 2.0 将图片转换为视频
- 💎 **Prompt优化** - 自动优化提示词以获得更好的生成效果
- 🎯 **自然语言交互** - 简单直观的命令行交互界面

## 📋 系统要求

- Node.js 16+
- Bash 4.0+
- 方舟 Agent Plan API Key

## 🚀 快速开始

### 1. 安装

```bash
git clone https://github.com/yourusername/vidai-design.git
cd vidai-design
make install
```

### 2. 配置

设置方舟 Agent Plan API Key:

```bash
export ARK_API_KEY="your-api-key-here"
```

### 3. 使用

```bash
vidai
```

## 💻 命令

### 基础命令

```bash
/help    # 显示帮助
/clear   # 清屏
/status  # 查看系统状态
/exit   # 退出
```

### 功能命令

```bash
生成图片 <描述>        # 生成图片
生成视频 <描述> <图片>  # 生成视频
优化 <prompt>          # 优化提示词
```

### 示例

```bash
# 生成图片
生成图片 一个美丽的森林精灵

# 生成视频
生成视频 精灵在飞舞 fairy.png

# 优化提示词
优化 森林精灵
```

## 🛠️ 开发

### 项目结构

```
vidai-design/
├── bin/
│   └── vidai-interactive    # 主程序
├── docs/                     # 文档
├── templates/                # 项目模板
├── config/                   # 配置文件
├── Makefile                  # 构建脚本
├── README.md                 # 项目说明
└── LICENSE                   # 许可证
```

### 本地开发

```bash
# 检查语法
bash -n bin/vidai-interactive

# 测试运行
./bin/vidai-interactive

# 安装到系统
make install
```

## 📝 依赖

- [byted-ark-seedream-skill](https://github.com/volcengine?) - 豆包AI图片生成
- [byted-ark-seedance-skill](https://github.com/volcengine?) - 豆包AI视频生成

## 📄 License

MIT License

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

## 📧 联系方式

- GitHub Issues: [项目地址](https://github.com/yourusername/vidai-design/issues)

---

**VidAI Design** - 让AI视频创作更简单 🎬
