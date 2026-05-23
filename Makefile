# VidAI Makefile
# 专业AI视频制作CLI工具

.PHONY: install uninstall update clean help test

# 安装目录
PREFIX ?= $(HOME)
BINDIR = $(PREFIX)/vidai/bin
INSTALL_DIR = $(HOME)/.local/bin

help:
	@echo "VidAI - 专业AI视频制作CLI工具"
	@echo ""
	@echo "可用命令:"
	@echo "  make install   - 安装vidai到系统"
	@echo "  make uninstall - 卸载vidai"
	@echo "  make update    - 更新vidai"
	@echo "  make clean     - 清理临时文件"
	@echo "  make test      - 运行测试"
	@echo "  make help      - 显示帮助"

install:
	@echo "安装VidAI..."
	@mkdir -p $(INSTALL_DIR)
	@chmod +x bin/vidai
	@ln -sf $(PWD)/bin/vidai $(INSTALL_DIR)/vidai
	@echo "✓ VidAI已安装到: $(INSTALL_DIR)/vidai"
	@echo ""
	@echo "请确保 $(INSTALL_DIR) 在你的 PATH 中:"
	@echo "  export PATH=\"$$PATH:$(INSTALL_DIR)\""
	@echo ""
	@echo "或添加到 ~/.zshrc 或 ~/.bashrc:"
	@echo "  echo 'export PATH=\"$$PATH:$(INSTALL_DIR)\"' >> ~/.zshrc"
	@echo "  source ~/.zshrc"
	@echo ""
	@echo "运行 'vidai help' 查看使用说明"

uninstall:
	@echo "卸载VidAI..."
	@rm -f $(INSTALL_DIR)/vidai
	@echo "✓ VidAI已卸载"

update:
	@echo "更新VidAI..."
	@git pull origin main 2>/dev/null || echo "非git仓库，跳过更新"
	@chmod +x bin/vidai
	@echo "✓ VidAI已更新"

clean:
	@echo "清理临时文件..."
	@find . -name "*.pyc" -delete
	@find . -name "__pycache__" -type d -exec rm -rf {} + 2>/dev/null || true
	@find . -name ".DS_Store" -delete 2>/dev/null || true
	@echo "✓ 清理完成"

test:
	@echo "运行VidAI测试..."
	@chmod +x bin/vidai
	@bin/vidai version
	@bin/vidai help
	@echo "✓ 测试完成"
