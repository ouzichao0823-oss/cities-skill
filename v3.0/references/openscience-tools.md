# OpenScience 可复用工具索引（[DATE] 蒸馏）

> 来源：[synthetic-sciences/openscience](https://github.com/synthetic-sciences/openscience)（Apache 2.0，本地 AI 科研工作台，`npm i -g @synsci/openscience`）。
> 本文件只登记**对城市研究工作流可复用**的 skill，作为查表。方法论类已蒸馏进主 skill 文件，此处仅留工具指针。

## 方法论已蒸馏的位置

| OpenScience skill | 蒸馏去向 |
|------------------|---------|
| research/hypothesis-generation | `core/design-patterns.md` 新增「竞争假设法」 |
| research/scientific-critical-thinking | `references/audit-protocol.md` §8 第三层设计质量评估 |
| writing/venue-templates/references/reviewer_expectations | `journals/cities.md` 十三之二审稿人期待校准 |

## 工具类 skill 查表（按城市研究用途）

### 📚 文献与引文
| Skill | 用途 | 何时用 | 安装 |
|-------|------|--------|------|
| `databases/openalex-database` | 240M+ 学术作品检索、引文网络、趋势分析、机构/作者追踪 | 补 ZotSeek（只搜本地库）之外的引文网络分析 | `uv pip install requests` + email 进 polite pool |
| `databases/pubmed-database` | PubMed 高级布尔/MeSH 查询 | 健康/医学相关引用 | requests 直连 REST |
| `databases/fred-economic-data` | 800K+ 宏观经济时序（GDP/失业/房价/区域数据） | 城市经济背景控制变量 | 需 FRED_API_KEY（免费申请） |
| `writing/citation-management` | Google Scholar/PubMed 查文献、DOI→BibTeX、引用校验 | 补 `nature-citation` 的 BibTeX 生成 | — |

### 🗺️ 空间数据与大数据
| Skill | 用途 | 何时用 | 安装 |
|-------|------|--------|------|
| `data-engineering/geopandas` | 矢量空间分析：空间连接、缓冲、克里金、choropleth | 格网→区域聚合、空间操作 | `uv pip install geopandas` |
| `data-engineering/dask` | 超内存 pandas 并行处理 | **[your dataset size]**超单机内存时 | `uv pip install dask` |
| `data-engineering/polars` | 内存内极速 DataFrame（比 pandas 快） | 大表筛选/聚合加速 | `uv pip install polars` |
| `data-engineering/aeon` | 时间序列分类/回归 | 日内时段模式分析 | — |

### 📈 统计与建模
| Skill | 用途 | 何时用 | 安装 |
|-------|------|--------|------|
| `coding/statistical-analysis` | 检验选择/功效分析/假设检验/APA报告 | η²、Cohen's d、多重比较的报告规范化 | statsmodels 等 |
| `coding/shap` | ML 模型解释（瀑布图/蜂群图/特征重要性） | 若用 ML 模型（非 K-means/NMF）做变量重要性 | `uv pip install shap` |
| `coding/networkx` | 网络分析 | 出行网络/OD网络拓扑 | — |
| `coding/pymc` | 贝叶斯建模 | 贝叶斯分层模型（若有） | — |

### 🎨 可视化
| Skill | 用途 | 何时用 | 安装 |
|-------|------|--------|------|
| `visualization/scientific-visualization` | 投稿级图 meta-skill：多面板、显著性标注、色盲安全、期刊格式 | 桥接 `nature-figure` 的补充 | matplotlib/seaborn/plotly |
| `visualization/seaborn` / `matplotlib` | 快速探索性绘图 | 探索阶段 | — |

### ⚙️ 本地 LLM 加速
| Skill | 用途 | 何时用 | 安装 |
|-------|------|--------|------|
| `ml-inference/vllm` | 本地 LLM 高吞吐推理 | **解决 your local LLM (large) 溢出 CPU 问题**的潜在方案 | 需 GPU vLLM |
| `ml-inference/llama-cpp` | GGUF 量化模型推理 | 低资源本地推理 | — |

## 决策规则

1. **方法论优先走蒸馏版**（上表"已蒸馏位置"），不要装整套 OpenScience 跑城市工作流
2. **工具按需引入**：真遇到大数据/引文网络/ML解释需求时，按表安装对应库即可
3. **不引入的**：生物学/化学/物理/量子全套 skill（不适用）；agent 未沙箱化，不用于执行不确定命令

## 原始项目速查

- 仓库: https://github.com/synthetic-sciences/openscience
- 安装: `npm install -g @synsci/openscience` / `npx synsci` / `curl -fsSL https://openscience.sh/install | bash`
- 架构: 本地 Hono 服务器 + SolidJS 浏览器工作区 + agent 运行时（消息循环/工具调度/压缩/溯源）+ 工具层（shell/编辑/LSP/MCP/科学连接器）
- 模型: 模型无关，BYOK（ANTHROPIC_API_KEY 等），本地模型也可
