# 引用内容忠实度审核协议

> 核心问题：文本中引用的论文，是否真的说了作者声称它说的东西？
> 这个协议定义了如何系统性地回答这个问题。

---

## 1. 论断分解框架

将待审核文本中的每个引用断言拆解为可验证的维度。城市研究语境下的分解：

### 维度定义

```
phenomenon (现象): 文本描述的城市现象是什么？
  例: "交通拥堵加剧社会隔离"

entity (对象): 在什么对象上观察到？
  例: 低收入群体、通勤者、城中村居民、15分钟生活圈、TOD 站点周边

relationship (关系): 对象和现象之间是什么关系？
  例: 增加/减少/加剧/缓解/相关/导致/调节/中介

context (语境): 在什么条件下成立？
  例: 中国超大城市的、2000-2020年的、疫情期间的、
      高密度建成环境的、单中心城市的

magnitude (量级): 效果有多大？（如果文本中给出了具体数字）
  例: "通勤时间每增加10分钟，社会参与减少8%"

mechanism (机制): 文本声称的因果机制是什么？（如果涉及）
  例: "通过压缩闲暇核心变量来减少社会参与"
```

### 分解示例

```
原文: "Glaeser et al. (2008) found that dense cities produce 
       more patents per capita, demonstrating that urban 
       agglomeration drives innovation."

分解:
  phenomenon: 城市创新产出
  entity: 美国大都市区
  relationship: 人口密度 → 增加 → 人均专利数
  context: 美国、跨城市比较、截面数据
  magnitude: 未在文本中给出具体数字
  mechanism: 集聚经济（agglomeration economies）

待验证:
  □ Glaeser et al. (2008) 是否真的发现了 density-patent 关系？
  □ 他们使用的方法能否支持 "drives"（因果性）？
  □ 语境是美国，是否可以泛化？
  □ 论文本身是否做出了 "demonstrates" 强度的声明？
```

---

## 2. 七级忠实度分级标准

### ✅ exact-match — 精确匹配

**定义**: 被引论文直接报告了文本所写的发现。方向、量级、对象、语境全部匹配。

**判定标准**:
- 论文摘要/正文中能找到与文本断言高度一致的句子
- 数值（如有）完全一致
- 语境范围一致
- 论文本身是一手研究（不是 review 引用他人发现）

**典型场景**:
```
文本: "Li et al. (2020) found that Shanghai's metro expansion 
      reduced commuting time by 18% for suburban residents."
      
论文摘要: "...metro expansion reduced average commuting time 
          by 18% for residents in Shanghai's inner suburbs..."
          
→ exact-match ✓
```

### 🟢 substantial-match — 实质匹配

**定义**: 论文支持总体方向和结论，但存在细微差异（量级略有不同、语境略有不同、对象子集不同）。不影响主要论证的有效性。

**判定标准**:
- 论文的发现方向和文本一致
- 差异在可接受的范围内（如：文本说"大城市"，论文研究的是"人口>100万的城市"，而我们的城市也在其中）
- 不影响论证的核心逻辑链

**典型场景**:
```
文本: "Studies show that bike-sharing reduces car use in 
      European cities by 10-15%."
      
论文: "In Paris and Lyon, bike-sharing was associated with 
      a 7% reduction in private car trips..."
      
→ substantial-match 🟢 (方向和量级大致匹配，具体数字有差异)
```

### 🟡 partial-match — 部分匹配

**定义**: 论文支持文本论断的一部分，但文本的表述延展了论文的实际发现范围，或论文与文本的结论相关但不相同。

**判定标准**:
- 论文和文本有共同的核心概念或现象
- 但论文的研究对象、方法、语境或结论范围与文本存在明显偏差
- 需要调整文本措辞来准确反映论文的实际贡献

**典型场景**:
```
文本: "Glaeser & Gottlieb (2009) argue that urban density 
      accelerates knowledge spillovers across industries."
      
论文: 主要讨论 density 对 productivity 和 wage 的影响，
      knowledge spillover 是其中一个机制讨论，且限定在 
      "within skill-intensive service industries"。
      
→ partial-match 🟡 (论文确实讨论了 spillover，但文本的 
  "across industries" 扩大了范围，需要加限定词)
```

### 🔵 contextual-only — 仅背景支撑

**定义**: 论文为文本的论断提供了背景、框架或理论语境，但论文本身并没有直接检验文本所说的具体关系。引用这篇论文来支撑一个具体的经验发现声明是不恰当的。

**判定标准**:
- 论文的领域和文本一致
- 但论文的角色是提供概念框架、文献综述、或方法论基础
- 不应用来支撑具体的经验发现声明

**典型场景**:
```
文本: "15-minute city planning reduces carbon emissions 
      by localizing daily activities (Moreno et al., 2021)."
      
Moreno et al. (2021): 是一篇提出 15-minute city 概念的
      框架论文（perspective/commentary），没有进行碳排放
      的量化研究。
      
→ contextual-only 🔵 (Moreno 提供了概念框架，但文本把它
  当作碳排放减少的经验证据来引用是不对的。需要找到实际的
  量化研究来支撑后半句。)
```

### 🟠 overstatement — 过度断言

**定义**: 文本把论文的发现说得比实际更强、更确定、更广泛。这是最常见的问题。

**子类型**:
| 类型 | 论文实际 | 文本写成 | 示例 |
|------|---------|---------|------|
| 相关性→因果性 | "associated with" / "correlated with" | "causes" / "drives" / "leads to" | 论文发现 density-income 相关，文本写成 density 导致收入增长 |
| 暗示→确证 | "suggests" / "may indicate" | "demonstrates" / "proves" / "confirms" | 论文用 suggestive evidence，文本用 definitive language |
| 特定语境→普遍规律 | "in Chinese megacities" | "in cities" / "globally" | 语境被泛化 |
| 特定人群→全人群 | "among low-income renters" | "among urban residents" | 对象被泛化 |
| 小效应→大效应 | "modest effect" / "small but significant" | "strong impact" / "major driver" | 效应被夸大 |
| 观点→发现 | opinion/review 中的观点 | 写成论文的实证发现 | review 里引述的观点被当成一手发现 |
| 未来预测→已有发现 | "may lead to" / "could result in" | "leads to" / "results in" | 论文的推测被写成已有结论 |

### 🔴 mismatch — 矛盾或不相关

**定义**: 论文的发现和文本的断言矛盾，或者论文研究的完全是别的东西。

**判定标准**:
- 论文的实际发现方向和文本相反
- 论文研究的是不同的对象/现象/关系
- 论文确实存在但内容和文本的引用目的完全无关

**典型场景**:
```
文本: "Job decentralization reduces commuting distance 
      (Gordon et al., 1991)."
      
Gordon et al. (1991): 实际上发现的是 "co-location"——
      就业和人口的共同分散化（而非单纯的就业分散化）
      维持了通勤距离的稳定。就业分散化单独来看并没有
      减少通勤距离。
      
→ mismatch 🔴 (论文的核心发现是 co-location 的作用，
  而不是单纯的 job decentralization)
```

### ⬜ unverifiable — 无法验证

**定义**: 无法获取足够信息来判定忠实度。

**判定标准**:
- 付费墙且 Zotero 无 PDF
- 论文非英文且无英文摘要
- 数据库完全找不到此论文（可能是虚构的引用？）
- 论文太旧，摘要不可获取
- 论文是书籍章节/报告/灰色文献

---

## 3. 城市研究特有失效模式

### 模式 1: 语境过度泛化 (Context Overgeneralization)

```
论文语境 → 文本语境 → 问题
─────────────────────────
"in New York and London" → "in cities" → 两个全球城市不能代表所有城市
"among high-income countries" → "globally" → 中低收入国家可能完全不同
"pre-2010 period" → 现在 → 结构性变化可能使发现过时
"in monocentric cities" → "in cities" → 多中心城市机制不同
"planned economies" → "market economies" → 制度环境完全不同
```

**审核时必问**: 论文的语境和我们文本应用的语境一致吗？

### 模式 2: 空间尺度错配 (Spatial Scale Mismatch)

```
论文尺度 → 文本尺度 → 问题
─────────────────────────
neighborhood → city → 社区效应不能直接聚合到城市
city → neighborhood → 城市级发现不一定在社区级成立（ecological fallacy）
metropolitan area → city proper → 都市区和市辖区是不同的空间单元
grid cell / pixel → neighborhood → 网格单元不等于任何有意义的社会空间
```

**城市研究特有**: 空间单元的选择（MAUP 问题）可以改变结果的方向和量级。论文用的是什么空间单元？和我们文本中的单元一致吗？

### 模式 3: 时间错配 (Temporal Mismatch)

```
论文数据 → 文本应用 → 问题
─────────────────────────
2000 census → 当下 → 25 年的结构性变化（城市化、数字化、人口迁移）
COVID 期间 → 常态 → 疫情期间的模式可能不是长期模式
单年横截面 → 趋势 → 一年数据不能支撑"趋势"的说法
```

### 模式 4: 选择性引用 (Cherry-picking)

```
一个领域有 5 篇论文:
  A: 发现正效应 (p<0.01, n=5000)
  B: 发现正效应 (p<0.05, n=2000)
  C: 发现零效应 (p>0.05, n=8000)  ← 样本最大但结果不显著
  D: 发现负效应 (p<0.01, n=30000) ← 样本最大且显著
  E: 发现正效应但效应小 (p<0.05, n=1000)

文本只引用了 A 和 B → 选择性引用了支持自己论点的论文
而忽略了 C、D、E 的混合证据
```

**审核时必问**: 在这个议题上，是否存在未被引用的、结论不同的论文？

### 模式 5: 方法论错配 (Methodology Mismatch)

```
论文方法 → 文本描述 → 问题
─────────────────────────
cross-sectional OLS → "effect" / "impact" → 截面回归不支持因果解释
qualitative interviews (n=15) → "representative" → 定性研究不声称代表性
simulation/scenario → "empirical finding" → 模拟结果不等同于经验发现
case study (1 city) → "cities generally" → 单案例不能泛化
```

### 模式 6: 概念偷换 (Concept Slippage)

```
论文测量 → 文本声称 → 问题
─────────────────────────
"accessibility to jobs" → "social inclusion" → 就业可达性只是社会包容的一个维度
"population density" → "urban compactness" → 密度 ≠ 紧凑度（还涉及混合使用等）
"mode share of transit" → "sustainable mobility" → 公交分担率 ≠ 可持续性
"housing price increase" → "gentrification" → 房价上涨不自动等于绅士化
```

### 模式 7: 统计显著但实质性不显著 (Statistical vs. Substantive Significance)

```
论文报告: β=0.003, p<0.001, n=500,000
文本声称: "has a substantial impact on"

问题: 大样本下的统计显著不等于实质性显著。效应量 0.003 可能
      在实际意义上微不足道。
```

---

## 4. 证据笔记模板

每条审核的引用必须生成证据笔记。格式：

```markdown
### 引用 #[N]

**文本断言**: "[原文中的句子]"

**引用标记**: [Author (Year)] / [1]

**被引论文**: [完整标题. 期刊, 卷(期), 页码. DOI]

**论断分解**:
- phenomenon: [现象]
- entity: [对象]
- relationship: [关系]
- context: [语境]
- magnitude: [量级，如涉及]
- mechanism: [机制，如涉及]

**论文实际内容**:
- 证据来源: [摘要 / 全文 / 无法获取]
- 摘要关键句: "[...]"
- 论文的研究对象: [谁/哪里/什么时候]
- 论文的核心发现: [论文自己声称的发现]
- 论文的方法: [什么方法]

**比对结果**:
- 忠实度分级: [exact / substantial / partial / contextual / overstatement / mismatch / unverifiable]
- 匹配点: [哪些维度匹配]
- 不匹配点: [哪些维度不匹配，具体差异是什么]
- 失效模式: [对应第 3 节的哪种模式，如适用]

**建议**:
- 保留此引用: [是/否/需修改措辞]
- 修改建议: [具体怎么重写这句话]
- 替代引用建议: [如果有更合适的论文]
```

---

## 5. 快速筛查模式（大批量引用时的第一轮）

当引用数 > 20 时，先做快速筛查，只找红灯：

```
快速筛查检查项（每条引用 < 2 分钟）:

1. 论文是否存在？(Zotero/CrossRef/PubMed 能否找到)
   → 找不到 → ⬜ unverifiable

2. 论文的研究方向和文本断言是否在同一个领域？
   → 完全不相关 → 🔴 mismatch，不需要继续

3. 快速读摘要 → 论文的核心发现方向是否与文本一致？
   → 方向相反 → 🔴 mismatch
   → 完全一致 → 暂标记为 potential-match，留待深度审核

4. 论文是不是 review/opinion/commentary 而非一手研究？
   → 是 → 🔵 contextual-only（如果文本把它当一手证据引用）

5. 文本中是否有具体数字？
   → 有 → 在摘要中查找该数字 → 找不到 → 🟡 potential-partial

快速筛查只标记红灯（mismatch/overstatement/unverifiable）。
绿灯和蓝灯留待深度审核。
```

---

## 6. 审查后行动指南

### 对 mismatch / overstatement 的处理

```
优先级: 必须修复

选项:
  A. 删除此引用，找正确支撑该论断的替代论文
  B. 重写文本，使其准确反映论文的实际发现
  C. 如果找不到替代论文 → 该论断可能需要从文本中删除或标注为"推测"
```

### 对 partial / contextual-only 的处理

```
优先级: 应该修复

选项:
  A. 加限定词使文本更精确（"in the context of..."、"among..."）
  B. 补充额外的引用来覆盖文本的完整范围
  C. 如果是 contextual-only → 降级为背景引用，不用于支撑经验发现
```

### 对 unverifiable 的处理

```
优先级: 标记但可以暂时接受

选项:
  A. 从 Zotero 获取 PDF → 重新审核
  B. 如果无法获取 → 在文中标注此引用"未经全文验证"
  C. 如果是关键引用但无法获取 → 考虑替换为可获取的论文
```

---

## 7. 本地 LLM 复查入口（your local LLM 默认）

当需要逐条核实“某文献是否真的支持讨论中的断言”时，用本地 Ollama 复查（不依赖云端）：

### 两级分工原则
- **本地 your local LLM = 粗判断**：批量粗查、初筛、通读全文找引句、给出第一轮 SUPPORT/CONTRADICT/NOT_COVER。速度快、零成本，负责把所有条目过一遍。
- **API（your API model，Anthropic 兼容端点）= 细致判断**：只精查**存疑/重点**条目（your local LLM 判非 SUPPORT、无 PDF、关键引用、两模型有分歧的），由 your API model 仲裁定夺。省 API token，把算力花在真正有分歧的地方。
- 分工触发：your local LLM 判 `SUPPORT` 且非重点 → 直接放行；your local LLM 判非 SUPPORT / 重点复核条目（JSON 加 `"priority": true`）→ 升级 your API model 精查。your API model 端点见脚本（`<API_BASE_URL>` + `<API_AUTH_TOKEN>`，模型 `your API model`）。
- **引用核查脚本建议内置双引擎流水线**：默认 `--stage both` = 本地小模型粗查全部 → 自动升级 API 模型精查存疑/重点 → `final` 字段写仲裁结果 + 生成 markdown 报告。可加 `--stage 1`（仅粗查）/ `--stage 2`（读已有结果仅精查）/ `--no-api`（跳过精查）/ `--json-only`（只汇总）等开关。

### ⚠️ 必须开启思考模式
- 任何 your local LLM 文献/判定调用，一律 `"think": "low"`（或更高）。
- **输出不限制**（num_predict=-1，模型思考完自然 stop，避免截断）；若设值**必须 ≥ 4000**——思考模式下思考 token 不写入 response 字段，预算太小时思考占满 → 正文为空。
- **禁止 `think: false`**——部分本地模型原生不支持 think=false（返回 HTTP 400），且引用判定需思考防幻觉。
- **唯一例外：用户明确说“加速/快跑”时才可降档。**
- 实测耗时因显卡而异；优先用能完整进显存的小模型做批量粗查。
- **模型默认 your local LLM**：所有本地杂活（代码生成、文献读取、对比判定）一律默认小模型，仅当用户**显式指定**“用大模型深度分析”时才切大模型（上下文更大但更慢）。

### 前置
- Ollama 运行中，默认引擎 `your local LLM` 已拉取；大模型仅深度分析备用
- 复查对象：你的引用清单文件（每条引用 + 对应断言）
- 脚本：自建一个通用核查脚本，断言清单放外部 JSON（脚本只写一次，断言改动只编辑 JSON）

### 用法（通用脚本）

```bash
# 全跑默认断言清单（think 模式）
python references/verify-claims.py

# 只跑重点条目
python references/verify-claims.py --only "ID1,ID2,ID3"

# 指定断言清单 / 模型 / 输出
python references/verify-claims.py --claims my.json --model your local LLM --out my_result.json

# 只解析已有结果重新打印汇总（不调 your local LLM，省时间省 token）
python references/verify-claims.py --json-only
```

### 新增/修改断言（省 token 关键）
**不要重写脚本**——只编辑断言 JSON（或新建 json），每条约 5 行：
```json
{"id":"ID1","claim":"要验证的断言","item_key":"<ZOTERO_ITEM_KEY>","label":"Author Year Journal"}
```
`item_key` 是 Zotero item key（脚本经 zotero-mcp 自动解析 PDF 路径），也可直接给 `"pdf":"C:\\...\\file.pdf"`。

### “对着找依据”模式
想同时塞入**你自己的论文段落** + **被引文献全文**，让 your local LLM 对照判定，在条目里加 `paper_excerpt` 字段：
```json
{"id":"ID1","claim":"断言",
 "paper_excerpt":"此处粘贴论文中使用该引用的原段落（英文）",
 "item_key":"<ZOTERO_ITEM_KEY>","label":"Author Year"}
```
脚本检测到 `paper_excerpt` 即进入 manifest+paper 模式（单次喂入，不分块）。**上下文配置：`--num-ctx` 取显卡显存能完整容纳的值**，足以容纳论文全文 + 一篇文献全文；超出显存会溢出变慢。

### 输出解读
- `SUPPORT` ✅：论文原文确实支持该断言
- `CONTRADICT` ❌：原文与断言冲突或混合 → 必须修
- `NOT_COVER` ⚠️：论文没谈这个 → 措辞需弱化或换引用
- `NO_PDF` / `NO_ITEMKEY` ⬜：需先补文献

### 重点复核条目（引用方向最易出错的）
对非 SUPPORT、无 PDF、关键引用、两模型有分歧的条目，逐条登记进重点清单，由 your API model 精查。例：
| ID | 断言 | 文献 |
|----|------|------|
| 示例 | <易出错的具体断言> | <文献> |

### 复查后
把结果回填到引用清单的状态列，mismatch 的按本协议第 6 节处理（删/改/换）。

---
## 8. 第三层：研究设计质量评估（蒸馏自 OpenScience scientific-critical-thinking）

> **定位**：前 7 节回答"被引论文是否说了这句话"（忠实度）。本节回答"**即使它说了，这证据本身靠不靠谱**"——一篇文章方法有缺陷，即使逐字支持你的断言，也不该撑起你的论证。这是审稿人攻击"用有问题的证据支撑结论"时的防线。

**何时用**：your local LLM 判 `SUPPORT` 的关键引用（尤其支撑核心命题的），除忠实度核查外，再过一遍本节。

### 8.1 城市研究方法质量四维检查

| 维度 | 要问的问题（城市研究版） | 红旗 |
|------|------------------------|------|
| **内部效度** | 它能支撑因果声明吗？自选择/混杂控制了吗？ | 横截面数据却下因果结论 |
| **外部效度** | 结论能泛化到你的语境吗？样本代表谁？ | 单城市/特定人群结论泛化到全中国 |
| **构念效度** | 指标真的测了它声称的东西吗？ | 用一个时间指标当核心构念代理而未验证 |
| **统计效度** | 样本够吗？多重比较校正了吗？效应量报了吗？ | 大N全显著只报p值不报效应量 |

### 8.2 城市研究高频偏倚清单

**选择偏倚**
- 样本只含某运营商用户 / 某APP用户 → 代表性
- 只有"有稳定职住"的个体（漏掉无固定工作/流动人口）→ 幸存者偏倚
- 手机信令只覆盖停留>30分钟 → 短时活动系统性遗漏

**测量偏倚**
- 手机信令识别"活动类型"靠 POI 推断 → 与真实活动有差距（构念效度风险）
- 居住地/工作地识别的阈值选择影响分组 → 敏感性检验了吗？

**分析偏倚**
- P-hacking：试了多种聚类K/多种指标直到"显著" → 需报告搜索过程或做稳健性
- 选择性报告：只报支持假设的维度
- 多重比较：多指标×多组做大量对比 → 校正了吗？还是靠效应量解释？

**认知偏倚（读文献时）**
- 确认偏倚：只highlight支持自己论点的研究
- 引用偏倚：引的文献全是支持面，忽略了反证
- 生态谬误：用群体层面结论支撑个体层面主张

### 8.3 证据强度分级（引用在论证中的权重）

被引文献用于支撑你的论证时，按证据强度分配权重：

```
强: 系统综述/元分析（但注意：量性元分析在地理/城市研究中少见）
中强: 设计良好的观察性研究（大规模、多城市、有对照）
中: 单城市描述性研究 / 生态研究
弱: 小样本、探索性、无对照
```

> **用法**：引言/综述里引用"中等以下证据强度"的论文支撑**强断言**时 → 弱化措辞（"suggests" 而非 "demonstrates"）或补充多个弱证据收敛。这直接对应忠实度分级里的 `overstatement` 模式，但发生在**证据本身**层面而非引用文本层面。

### 8.4 输出

对每条 SUPPORT 但方法存疑的引用，在结果里加一列 `design_quality`：`strong / medium / weak`。weak 的标记为"证据支撑但强度不足"，提示写作层需弱化断言或补充收敛证据。

> 配合引用核查脚本：可在断言 JSON 条目加 `"audit_design": true` 标记需做第三层评估的条目。
