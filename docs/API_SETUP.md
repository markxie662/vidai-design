# VidAI API 配置指南

## 📋 获取方舟 Agent Plan API Key

### 步骤 1：注册账号

1. 访问 [火山方舟控制台](https://console.volcengine.com/ark)
2. 注册或登录账号
3. 完成实名认证

### 步骤 2：创建应用

1. 进入「模型推理」页面
2. 点击「创建应用」
3. 选择模型类型（豆包 Seedream/Seedance）
4. 设置应用名称和描述
5. 提交创建

### 步骤 3：获取 API Key

1. 在应用列表中找到创建的应用
2. 点击「查看详情」
3. 复制 API Key（格式：`ark-xxxxxxxxxxxxxxx`）

## 🔧 配置 VidAI

### 方法 1：使用配置向导（推荐）

```bash
vidai-config
```

选择「配置方舟 API Key」，输入你的 API Key 即可。

### 方法 2：在 VidAI 中配置

```bash
vidai
# 输入：/config
```

### 方法 3：手动配置

编辑配置文件：

```bash
nano ~/.vidai/config.json
```

添加你的 API Key：

```json
{
  "model": {
    "provider": "volcengine",
    "api_key": "ark-your-api-key-here"
  }
}
```

## ✅ 验证配置

### 测试 API 连接

```bash
vidai-config
# 选择「测试 API 连接」
```

或检查状态：

```bash
vidai
# 输入：/status
```

查看「API 配置」状态：
- ✅ 已配置 - 绿色
- ✗ 未配置 - 红色

## 🔒 安全说明

- API Key 仅存储在本地 `~/.vidai/config.json`
- 文件权限设置为仅用户可读
- 不会上传到任何远程服务器
- 建议定期更换 API Key

## ❓ 常见问题

### Q: API Key 格式错误

A: 确保 API Key 以 `ark-` 开头，包含32个以上字符。

### Q: 连接测试失败

A: 检查：
1. API Key 是否正确
2. 网络连接是否正常
3. 方舟账户是否有剩余配额

### Q: 如何更换 API Key

A: 重新运行配置向导，或手动编辑 `~/.vidai/config.json`

### Q: 配置文件位置

A: `~/.vidai/config.json`（macOS/Linux）

## 📞 获取帮助

- [方舟控制台](https://console.volcengine.com/ark)
- [方舟文档](https://www.volcengine.com/docs/82379)
- [GitHub Issues](https://github.com/markxie662/vidai-design/issues)
