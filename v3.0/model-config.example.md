# 模型配置（模板）

复制本文件为 `model-config.md` 并填入你的模型信息。`model-config.md` 已在 `.gitignore` 中排除，不会提交。

```markdown
# 模型配置（本地生成，勿提交到 git）

## 本地模型（粗活：文献检索/提取/初筛，省 token）
- provider: ollama
- base_url: http://localhost:11434
- model: qwen2.5:7b

## API 模型（精查/仲裁，可选，key 走环境变量不写这里）
- provider: deepseek
- base_url: https://api.deepseek.com/v1
- model: deepseek-chat
- api_key_env: DEEPSEEK_API_KEY
```
