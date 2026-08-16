# 桥接既有 Skill

本 skill 聚焦于**研究设计**和**逻辑链验证**。当需要以下能力时，桥接到专业 skill：

---

## 何时桥接

| 场景 | 桥接到 | 说明 |
|------|-------|------|
| 需要 Nature Cities 格式的章节草稿 | `urban-study-manuscript` | 专业的章节模板和字数控制 |
| 深度英文润色/中译英 | `nature-polishing` | Nature 风格的全面语言转换 |
| 大规模系统文献检索 | `nature-academic-search` | 跨数据库的检索策略 |
| 制作期刊要求的图表 | `nature-figure` | 配色和排版规范 |
| Nature 格式引用插入 | `nature-citation` | 数字上标引用 |
| Zotero 库段落级语义检索 | **ZotSeek MCP** | `http://localhost:<ZOTSEEK_PORT>/zotseek/mcp` |
| 句子级精准引用定位 | **本地句子比对工具** | 本地服务 |

---

## 桥接方式

不做自动调用。告诉用户"建议使用 /{skill-name} 来完成{任务}"，让用户决定。

## 与 urban-study-manuscript 的协作模式

```
本 skill 输出 → urban-study-manuscript 输入
─────────────────────────────────────────
研究设计方案      → 用于起草引言和方法的材料
逻辑链分析        → 确保写作不偏离主线
Gap 分析报告      → 引入引言中的 Gap 陈述
研究对象+议题定位  → 摘要和标题的素材
```
