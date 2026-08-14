# 配置大模型（混合架构）

本 Skill 的省 token 设计是**双引擎混合架构**：

- **本地模型（粗活）**：文献检索、批量提取、初筛、第一轮判定。跑在你自己的机器上（Ollama），几乎零 API 成本。
- **API 模型（精查）**：只处理存疑/重点条目，做最终仲裁。算力花在真正有分歧处，token 消耗降到最低。

分工原则一句话：**本地粗判断，API 细判断**。本地模型判"支持且非重点"→ 放行；判"不支持 / 重点"→ 升级 API 精查。

---

## 方式一：一键配置（推荐）

在仓库根目录运行安装器，自动完成「装 skill + 拉本地模型 + 生成 `model-config.md`」：

```bash
# macOS / Linux
bash install.sh

# Windows（PowerShell）
powershell -ExecutionPolicy Bypass -File install.ps1
```

默认拉取 `qwen2.5:7b`（公开、中文强、约 8GB 内存可跑）。想换模型：

```bash
MODEL=qwen3:8b bash install.sh      # macOS / Linux
$env:MODEL="qwen3:8b"               # Windows，随后运行 install.ps1
```

---

## 方式二：手动配置

### 1. 安装 Ollama

从 <https://ollama.com/download> 下载安装。验证：

```bash
ollama --version
```

### 2. 拉取本地模型

```bash
ollama pull qwen2.5:7b
```

模型选择建议（按机器配置）：

| 显存/内存 | 推荐 |
|-----------|------|
| 8 GB | `qwen2.5:3b`、`llama3.2:3b` |
| 16 GB | `qwen2.5:7b`、`qwen3:8b` |
| 24 GB+ | `qwen2.5:14b`、`qwen3:14b` |

中文文献任务优先 qwen 系列；纯英文可换 llama / gemma。

### 3. 写 `model-config.md`

在 skill 目录下新建 `model-config.md`（该文件已加入 `.gitignore`，不会提交）：

```markdown
# 模型配置（本地生成，勿提交到 git）

## 本地模型（粗活）
- provider: ollama
- base_url: http://localhost:11434
- model: qwen2.5:7b

## API 模型（精查/仲裁，可选）
- provider: deepseek
- base_url: https://api.deepseek.com/v1
- model: deepseek-chat
- api_key_env: DEEPSEEK_API_KEY
```

### 4. API 模型的 key 走环境变量

key **不要**写进 `model-config.md`。在 shell 里导出，例如：

```bash
export DEEPSEEK_API_KEY="sk-..."
```

Claude Code 读取该环境变量即可调用 API 模型。若你没有 API 模型，可只配本地模型——本地模型也能独立完成粗活，只是缺少精查仲裁层。

---

## Skill 如何读取配置

Skill 运行时会读 `model-config.md` 获取本地模型（provider / base_url / model）和可选 API 模型。若文件不存在，回退到默认：本地 Ollama `qwen2.5:7b` + 你的 API 模型。
