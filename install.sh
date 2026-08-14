#!/usr/bin/env bash
# Cities Manuscript Engine — 一键安装 + 大模型配置
# 用法：
#   bash install.sh                # 默认本地模型 qwen2.5:7b
#   MODEL=qwen3:8b bash install.sh # 指定本地模型
#   bash install.sh --skip-model   # 只装 skill，跳过模型配置
set -euo pipefail

SKILL_NAME="cities-knowledge-graph"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_SRC="$SCRIPT_DIR/v3.0"
DEFAULT_MODEL="${MODEL:-qwen2.5:7b}"
SKIP_MODEL=0

for arg in "$@"; do
  case "$arg" in
    --skip-model) SKIP_MODEL=1 ;;
    *) echo "未知参数: $arg"; exit 1 ;;
  esac
done

echo "== Cities Manuscript Engine 安装器 =="

# 1. 定位 Claude Code skills 目录
if [ -n "${CLAUDE_SKILLS_DIR:-}" ] && [ -d "$CLAUDE_SKILLS_DIR" ]; then
  SKILLS_DIR="$CLAUDE_SKILLS_DIR"
elif [ -d "$HOME/.claude/skills" ]; then
  SKILLS_DIR="$HOME/.claude/skills"
else
  SKILLS_DIR="$HOME/.claude/skills"
  mkdir -p "$SKILLS_DIR"
fi
DEST="$SKILLS_DIR/$SKILL_NAME"

# 2. 复制 skill
echo "→ 安装 skill 到 $DEST"
rm -rf "$DEST"
cp -r "$SKILL_SRC" "$DEST"

# 3. 配置本地大模型（Ollama）
if [ "$SKIP_MODEL" -eq 1 ]; then
  echo "→ 跳过模型配置（--skip-model）"
  exit 0
fi

echo "→ 配置本地大模型（Ollama）"
if command -v ollama >/dev/null 2>&1; then
  echo "  检测到 Ollama"
else
  echo "  未检测到 Ollama。请先安装：https://ollama.com/download"
  echo "  安装后手动执行：ollama pull $DEFAULT_MODEL"
fi

if command -v ollama >/dev/null 2>&1; then
  if ollama list 2>/dev/null | awk '{print $1}' | grep -qx "$DEFAULT_MODEL"; then
    echo "  模型 $DEFAULT_MODEL 已存在"
  else
    echo "  拉取模型 $DEFAULT_MODEL（首次约需几分钟）..."
    ollama pull "$DEFAULT_MODEL" || echo "  拉取失败，可稍后手动：ollama pull $DEFAULT_MODEL"
  fi
fi

# 4. 生成 model-config.md（本地，勿提交）
echo "→ 写入模型配置 $DEST/model-config.md"
cat > "$DEST/model-config.md" <<EOF
# 模型配置（本地生成，勿提交到 git）

## 本地模型（粗活：文献检索/提取/初筛，省 token）
- provider: ollama
- base_url: http://localhost:11434
- model: $DEFAULT_MODEL

## API 模型（精查/仲裁，可选，key 走环境变量不写这里）
- provider: （填写，如 deepseek / openai / anthropic）
- base_url: （填写）
- model: （填写）
- api_key_env: （填环境变量名，例如 DEEPSEEK_API_KEY）
EOF

echo ""
echo "✓ 完成。skill 已装入：$DEST"
echo "  本地模型配置见：$DEST/model-config.md"
echo "  如需 API 精查模型，手动在 model-config.md 补 provider/base_url/model/api_key_env。"
