# VidAI Design - AI-Powered Video Creation Tool

> 基于豆包 Seedance 2.0 的专业AI视频生成CLI工具

<div align="center">

## 🎨 界面预览

### 主界面

```
╔══════════════════════════════════════════════════════════════════╗
║                                                                      ║
║              ◗█████◖        ╭────────╮        ◗█████◖              ║
║            ██◗████◖██      ╭────╮╰────╮╭────╮      ██◗████◖██            ║
║          ██◗████◖████◖████◗██    ╭────╯╰────╮╰────╯╭────╮    ██◗████◖████◖████◗██          ║
║        ██◗████◖████◖███████◖████  ╭────╮╰────╮╭────╮╰────╮╭────╮  ██◗████◖████◖███████◖████        ║
║      ██◗████◖████◖███████◖███████◖████    ╰────╮╭────╯╰────╮╭────╯    ████◖████◖███████◖███████◖████      ║
║        ██◗████◖████◖███████◖████  ╭────╮╰────╮╭────╮╰────╮╭────╮  ██◗████◖████◖███████◖████        ║
║          ██◗████◖████◖████◖████    ╰────╯╰────╯╰────╯╰────╯    ██◗████◖████◖████◖████          ║
║            ██◗████◖██      ╰────────────────────────╯      ██◗████◖██            ║
║              ◖█████◗                                            ◖█████◗              ║
║                                                                      ║
║       ┌──────────────────────────────────────────────┐              ║
║       │  ▶ VidAI Design v0.1.0 ◀                    │              ║
║       │  AI-Powered Video Creation Tool             │              ║
║       └──────────────────────────────────────────────┘              ║
║                                                                      ║
║  ┌─ 核心功能 ─────────────────────────────────────────────┐        ║
║  │                                                            │        ║
║  │  ◈ 图片生成           ◈ 视频创作           ◈ Prompt优化  │        ║
║  │  Seedream API        Seedance API         智能增强        │        ║
║  │                                                            │        ║
║  └────────────────────────────────────────────────────────────┘        ║
║                                                                      ║
║  ┌─ SYSTEM STATUS ─────────────────────────────────────────────┐       ║
║  │  ● Seedream ● Seedance ● Network ● Ready          │       ║
║  └────────────────────────────────────────────────────────────┘       ║
║                                                                      ║
║  ┌─ 快速开始 ─────────────────────────────────────────────┐        ║
║  │  ▸ 生成图片 [描述]       •  ▸ 生成视频 [描述] [图片]        │        ║
║  │  ▸ 优化描述 [prompt]     •  ▸ /help 查看完整帮助               │        ║
║  └────────────────────────────────────────────────────────────┘        ║
║                                                                      ║
╚══════════════════════════════════════════════════════════════════╝

▶ 
```

### 功能特性

- 🎨 **艺术几何 Logo** - 现代化抽象设计
- 🎯 **简洁交互** - 单个 ▶ 提示符，直观易用
- 💎 **功能卡片化** - 清晰的信息层次
- 🌈 **多彩配色** - 青色/洋红/黄色渐变

### 添加实际截图

运行截图工具添加你的界面截图：

```bash
~/vidai/bin/vidai-screenshot
```

或手动截图后保存到 `screenshots/` 目录。

</div>

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
git clone https://github.com/markxie662/vidai-design.git
cd vidai-design
make install
```

### 2. 配置 API

**重要：首次使用需要配置方舟 Agent Plan API Key**

运行配置向导：

```bash
vidai-config
```

或在 VidAI 中输入 `/config` 进入配置界面。

获取 API Key：
- 访问 [火山方舟控制台](https://console.volcengine.com/ark)
- 创建应用并获取 API Key（格式：ark-xxx）

### 3. 使用

```bash
vidai
```

## 🎛️ 配置说明

### API 配置文件

配置文件位置：`~/.vidai/config.json`

```json
{
  "model": {
    "provider": "volcengine",
    "api_key": "ark-your-api-key-here"
  },
  "seedream": {
    "enabled": true,
    "default_size": "2K",
    "default_mode": "text-to-image",
    "optimize": true,
    "watermark": false
  },
  "seedance": {
    "enabled": true,
    "default_duration": 5,
    "default_ratio": "16:9",
    "default_resolution": "720p",
    "generate_audio": false,
    "watermark": false
  }
}
```

### 配置工具功能

- **配置 API Key**: 安全存储方舟 API 凭证
- **查看配置**: 显示当前配置状态
- **测试连接**: 验证 API Key 有效性
- **删除配置**: 移除已保存的配置

## 💻 命令

### 截图工具

使用内置截图工具快速生成界面预览：

```bash
~/vidai/bin/vidai-screenshot
```

工具会自动展示各个界面并暂停，方便你使用 `Cmd + Shift + 4` 截图。

### 基础命令

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
