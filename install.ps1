# Cities Manuscript Engine — 一键安装 + 大模型配置（Windows PowerShell）
# 用法：
#   powershell -ExecutionPolicy Bypass -File install.ps1
#   $env:MODEL = "qwen3:8b"; powershell -ExecutionPolicy Bypass -File install.ps1
#   powershell -ExecutionPolicy Bypass -File install.ps1 -SkipModel
param(
  [switch]$SkipModel
)

$ErrorActionPreference = "Stop"
$SKILL_NAME = "cities-knowledge-graph"
$SCRIPT_DIR = Split-Path -Parent $MyInvocation.MyCommand.Path
$SKILL_SRC = Join-Path $SCRIPT_DIR "v3.1"
$DEFAULT_MODEL = if ($env:MODEL) { $env:MODEL } else { "qwen2.5:7b" }

Write-Host "== Cities Manuscript Engine 安装器 =="

# 1. 定位 Claude Code skills 目录
if ($env:CLAUDE_SKILLS_DIR -and (Test-Path $env:CLAUDE_SKILLS_DIR)) {
  $SKILLS_DIR = $env:CLAUDE_SKILLS_DIR
} elseif (Test-Path "$env:USERPROFILE\.claude\skills") {
  $SKILLS_DIR = "$env:USERPROFILE\.claude\skills"
} else {
  $SKILLS_DIR = "$env:USERPROFILE\.claude\skills"
  New-Item -ItemType Directory -Force -Path $SKILLS_DIR | Out-Null
}
$DEST = Join-Path $SKILLS_DIR $SKILL_NAME

# 2. 复制 skill
Write-Host "-> 安装 skill 到 $DEST"
if (Test-Path $DEST) { Remove-Item -Recurse -Force $DEST }
Copy-Item -Recurse -Force $SKILL_SRC $DEST

if ($SkipModel) {
  Write-Host "-> 跳过模型配置（-SkipModel）"
  exit 0
}

# 3. 配置本地大模型（Ollama）
Write-Host "-> 配置本地大模型（Ollama）"
$ollama = Get-Command ollama -ErrorAction SilentlyContinue
if ($null -eq $ollama) {
  Write-Host "  未检测到 Ollama。请先安装：https://ollama.com/download"
  Write-Host "  安装后手动执行：ollama pull $DEFAULT_MODEL"
} else {
  Write-Host "  检测到 Ollama"
  $installed = ollama list 2>$null | Select-String -SimpleMatch $DEFAULT_MODEL
  if ($installed) {
    Write-Host "  模型 $DEFAULT_MODEL 已存在"
  } else {
    Write-Host "  拉取模型 $DEFAULT_MODEL（首次约需几分钟）..."
    ollama pull $DEFAULT_MODEL
  }
}

# 4. 生成 model-config.md（本地，勿提交）
Write-Host "-> 写入模型配置 $DEST\model-config.md"
$config = @"
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
"@
Set-Content -Path (Join-Path $DEST "model-config.md") -Value $config -Encoding UTF8

Write-Host ""
Write-Host "== 完成。skill 已装入：$DEST"
Write-Host "  本地模型配置见：$DEST\model-config.md"
Write-Host "  如需 API 精查模型，手动在 model-config.md 补 provider/base_url/model/api_key_env。"
