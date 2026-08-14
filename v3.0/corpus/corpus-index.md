# Zotero 本地论文库概况

## 库规模

- **位置**: 你的 Zotero 数据目录（Zotero 官方 MCP Server 会自动定位，无需手填路径）
- **访问方式**: Zotero 官方 MCP Server（HTTP，见 `zotero-query.md`）
- **期刊论文总数**: 取决于你的库（本 skill 的语料库构建时含约 2800+ 篇期刊论文）
- **Q1 城市研究期刊论文**: 取决于你的库（构建语料时约 800+ 篇，来自 ~30 种 SCI Q1 期刊）
- **本地 PDF**: 取决于你的库（附件在 `storage/{attachmentKey}/` 下）

> 以上数字仅描述**构建本 skill 写作语料时所用库**的规模，不是对你库的要求。你的库规模不同不影响使用；写作判断仍基于 `journals/` 里已提炼好的真实语料。

## 主要期刊覆盖（构建语料时各期刊论文数）

| 期刊 | 论文数 | 领域 | 典型主题 |
|------|--------|------|---------|
| Cities | 149 | 城市综合 | 治理、绅士化、可持续、规划 |
| J. Transport Geography | 138 | 交通地理 | 可达性、职住、出行行为 |
| Transportation Research D | 95 | 交通与环境 | 碳排放、EV、环境效益 |
| Transportation | 181 | 交通工程 | 交通流、需求建模 |
| Urban Studies | 51 | 城市综合 | 隔离、不平等、政策 |
| Travel Behaviour & Society | 42 | 出行行为 | 活动空间、微出行、态度 |
| Applied Geography | 34 | 应用地理 | 土地利用、GIS、空间分析 |
| Environment & Planning 系列 | 30 | 规划理论 | 空间正义、制度改革 |
| Urban Geography | 22 | 城市地理 | 空间生产、绅士化 |
| Habitat International | 19 | 人居环境 | 住房、城中村、城市化 |
| Transport Policy | 19 | 交通政策 | 限行、补贴、TOD |
| Nature Cities | 10 | 顶刊 | 综合、前沿 |
| Annals of AAG | 10 | 地理学 | 空间理论、定性+定量 |
| Sustainable Cities & Society | 8 | 可持续 | 能源、韧性、低碳 |
| CEUS | 6 | 计算城市 | 大数据、ML、模拟 |
| Land Use Policy | 6 | 土地政策 | 土地出让、耕地保护 |

## 使用建议

- **按议题查论文**: 加载 `corpus/zotero-query.md` 获取查询模板
- **按期刊查论文**: 不同期刊对同一议题的处理风格不同（如 Cities vs JTG）
- **找方法论文**: 查询包含 "methodology/framework/approach" 的摘要
- **找经典论文**: 按被引频率或发表时间排序
- **补充在线检索**: Zotero 没有覆盖的领域 → `nature-academic-search`
