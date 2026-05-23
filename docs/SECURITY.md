# VidAI 安全说明

## 🔒 安全特性

### 配置文件保护

- **位置**: `~/.vidai/config.json`
- **权限**: 自动设置为 `600` (仅用户可读写)
- **加密**: 建议使用系统加密工具（如 FileVault）

### 环境变量支持

VidAI 支持通过环境变量设置 API Key：

```bash
export ARK_API_KEY="ark-your-api-key"
vidai
```

**优先级**: 环境变量 > 配置文件

### 权限检查

VidAI 自动检查并修复配置文件权限：

```bash
vidai-security-check
```

## 🛡️ 安全最佳实践

### 1. 永远不要硬编码 API Key

❌ **错误**：
```javascript
const apiKey = "ark-1234567890abcdef";
```

✅ **正确**：
```javascript
const apiKey = process.env.ARK_API_KEY;
```

### 2. 使用 .gitignore

确保配置文件不会被提交到 Git：

```gitignore
config/
*.json
```

### 3. 定期更换 API Key

建议每 90 天更换一次 API Key：

1. 访问[方舟控制台](https://console.volcengine.com/ark)
2. 创建新的 API Key
3. 更新 VidAI 配置
4. 删除旧的 API Key

### 4. 监控 API 使用情况

定期检查：
- API 调用量是否异常
- 是否有未授权的调用
- 账单是否正常

### 5. 使用最小权限原则

- 仅授予必要的权限
- 不同环境使用不同 API Key
- 定期审计 API Key 权限

## 🔍 安全检查工具

### 运行安全检查

```bash
vidai-security-check
```

检查项目：
- ✅ 配置目录权限 (700)
- ✅ 配置文件权限 (600)
- ✅ API Key 暴露风险
- ✅ 环境变量设置
- ✅ .gitignore 配置
- ✅ Git 历史记录
- ✅ 日志文件安全

### 配置文件位置

| 平台 | 位置 |
|------|------|
| macOS/Linux | `~/.vidai/config.json` |
| Windows | `%USERPROFILE%\.vidai\config.json` |

## ⚠️ 常见安全问题

### 问题 1: 配置文件权限不安全

**症状**: 配置文件权限为 644 或更宽松

**解决方案**:
```bash
chmod 600 ~/.vidai/config.json
chmod 700 ~/.vidai/
```

### 问题 2: API Key 暴露在 Git 历史

**症状**: API Key 曾被提交到 Git

**解决方案**:
```bash
# 使用 BFG Repo-Cleaner
java -jar bfg.jar --delete-files config.json
git reflog expire --expire=now --all
git gc --prune=now --aggressive
```

### 问题 3: 日志文件包含 API Key

**症状**: 日志文件中包含 API Key

**解决方案**:
```bash
# 删除包含 API Key 的日志
grep -r "ark-" ~/vidai/ --include="*.log" -l
# 手动清理这些文件
```

## 🔐 环境隔离

### 开发环境

```bash
export ARK_API_KEY="ark-dev-key"
vidai
```

### 生产环境

```bash
export ARK_API_KEY="ark-prod-key"
vidai
```

### 测试环境

```bash
export ARK_API_KEY="ark-test-key"
vidai
```

## 📋 安全检查清单

- [ ] 配置文件权限为 600
- [ ] 配置目录权限为 700
- [ ] API Key 未硬编码在代码中
- [ ] .gitignore 已配置
- [ ] Git 历史无敏感信息
- [ ] 日志文件无 API Key
- [ ] 使用不同的 API Key 用于不同环境
- [ ] 定期更换 API Key
- [ ] 启用系统加密（FileVault 等）
- [ ] 运行安全检查无问题

## 🚨 应急响应

### API Key 泄露处理

1. **立即撤销**泄露的 API Key
   - 访问[方舟控制台](https://console.volcengine.com/ark)
   - 删除泄露的 Key

2. **创建新**的 API Key

3. **更新**所有使用该 Key 的配置

4. **检查**日志和监控异常访问

5. **审查**代码和配置，确保无其他泄露点

### 可疑活动检测

如果发现可疑活动：

1. 立即更换 API Key
2. 检查访问日志
3. 启用额外监控
4. 考虑启用 IP 白名单

## 📞 报告安全问题

如发现安全漏洞，请：

1. 不要公开披露
2. 发送邮件至：security@example.com
3. 详细描述漏洞和复现步骤
4. 等待确认和修复

---

**安全第一，预防为主！** 🔒
