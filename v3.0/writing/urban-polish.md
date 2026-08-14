# 城市研究润色方法论（国产模型版）

> 目标：建立一套**基于国产模型**（your local LLM、your API model）的城市研究论文润色方法论。
> **根本前提**：国产模型的英文是第二语言。它的**英文语感不可靠**（地道性、冠词/介词、节奏），但**中文理解、逻辑诊断、结构分析、规则执行可靠**。
> 因此本方法论的架构是：**国产模型当编辑/审稿人（诊断+重构），不当英文作家（自由润色）**。英文的地道性由**规则校验 + 验证过的句式模板**保证。

---

## 〇、根本前提：国产模型英文非母语

这决定了**能做什么、不能做什么**：

| 能力 | 国产模型 | 结论 |
|------|---------|------|
| 中文理解 | 强 | ✅ 可读中文稿、判断论证 |
| 逻辑诊断 | 强 | ✅ 识别段落功能、论证漏洞、Gap |
| 结构分析 | 强 | ✅ 判断 hourglass、章节职责 |
| 规则执行 | 强 | ✅ 检查清单逐条过 |
| **英文语感** | **弱** | ❌ 不能自由改写英文（会造出不地道句子） |
| **英文地道性** | **弱** | ❌ 冠词/介词/搭配/节奏不可靠 |
| 英文模板记忆 | 中 | ⚠️ 给模板能套，自由发挥会跑偏 |

**核心推论**：
1. **诊断层**（这章论证对吗？这段功能是什么？）→ 国产模型擅长，交给它
2. **规则层**（句子长度、破折号、引用重复、拼写）→ 脚本执行，零模型
3. **英文重构层** → **不自由发挥**，用句式模板库"填空式"改写
4. **英文校验层** → 规则扫描（冠词、介词、长度、时态），不由模型自证

---

## 〇·五、改动分级：先判断"要不要改"，再决定"怎么改"

> **核心原则**：润色的首要任务是**判断该不该改**，不是套模板强制改。别人丢上来的初稿有别人的道理——术语偏好、行文风格、论证侧重，作者可能有意为之。强行改成"标准句式"是过度润色，会破坏作者意图。

**每次诊断一个句子/段落后，先归入一级，再决定动作**：

### 三级改动分级

| 级 | 判断 | 动作 | 例子 |
|----|------|------|------|
| **A. 真错误** | 语法错、逻辑断、引用重复、拼写错、overclaim、缺数据支撑 | **必须改**（标红） | "demonstrates that overtime work causes heart problems"（相关当因果）；`(refs)(refs)`；Hägerstraand |
| **B. 明显可提升** | 正确但生硬/冗长/可读性差，改动无风险 | **建议改**（标红，note 说明） | 46 词长句可拆；被动冗余；缺过渡 |
| **C. 风格/偏好** | 作者有意表达，改了不更好只不同 | **不动** | "trajectories" vs "lines"；术语选择；某句式是作者风格 |

### 判断规则（避免过度润色）

1. **作者有道理的** → C 级不动。判断信号：表达成立、无歧义、术语专业，只是"换种说法也通"。
2. **改动有风险的** → 保守。不确定提升就是 C 级。
3. **审稿人会拒的** → A 级。判断信号：审稿人能据此挑错（引用错误、因果夸大、数据不符、占位符）。
4. **每次只改该改的** → 标红只标 A/B 级，C 级保持黑字。

### 为什么重要

- **过度润色 = 新错误**：把作者有意的表达改成"标准句式"，可能引入歧义或丢失细微含义。
- **审稿人看的是论证**：改再漂亮，论证有洞照样拒；论证扎实，C 级表达不致命。
- **国产模型天然会过度润色**：它倾向"统一成我见过的句式"，必须用分级机制约束它，让它只动 A/B，不碰 C。

### 在诊断模板中的应用

your local LLM 诊断时，对每个"问题句"输出：
```
级别：A（真错误）/ B（建议）/ C（不动）
理由：一句话
```

---

## 一、诊断优先级（第一步永远是它）

**按顺序检查，不跳过**：

```
1. 论文类型      → 实证量化 / 政策分析 / 方法论 / 综述？
2. 章节职责      → 这章在论证地图中的任务？（见 09-layering.md）
3. 段落逻辑      → 每段一个控制思想？首句是核心idea？有无跳跃？
4. 论断-证据     → 每个论断有引用或数据支撑吗？结论是否超出数据？
5. 句子润色      → 最后才动句子——且用模板，不自由发挥
```

**读者五问检验每段**（读者下一步想知道什么）：
```
1. 这和我相关吗？    (relevance)
2. 这里有什么新东西？ (novelty)
3. 我该相信吗？       (trust)
4. 我能复用吗？       (reuse)
5. 这意味着什么？边界？ (meaning)
```

**hourglass 检查**：引言从宽到窄，讨论再放宽。违反则先重建结构。

---

## 二、句子控制（机器可验证的硬规则）

> 全部用脚本检查，**不依赖模型判断**。

| 规则 | 标准 | 说明 |
|------|------|------|
| 句子长度 | 每句 ≤30 词 | 脚本列出所有超限句 |
| 一句一命题 | 每句 1 个主谓宾 | 脚本按连接词/逗号密度粗筛，人工确认 |
| 破折号 | 不用 em dash（—） | 脚本扫描替换 |
| 重复引用 | 无 `(refs)(refs)` | 脚本检测相邻重复 |
| 拼写统一 | Hägerstrand/Kwan/Müürisepp 等 | 维护替换表，脚本执行 |
| 万能模板 | 首句不用 "With the rapid development" | 脚本黑名单检测 |
| 时态 | 结果=过去时，解释=现在时，政策=情态 | 见下 |

### 时态铁律（城市研究适用）

| 对象 | 时态 | 例 |
|------|------|-----|
| 本文实证结果 | 过去时 | "We found that..." |
| 本文解释性主张 | 现在时 | "This suggests that..." |
| 文献的历史发现 | 过去时 | "Xiao et al. (2020) reported..." |
| 作者一般立场 | 现在时 | "Time poverty restricts participation (Vickery, 1977)." |
| 政策/建议 | 情态 | "planners should..." |

---

## 三、城市研究专属检查清单（来自 Cities 实测）

### 引言
- □ 第一句不是万能模板
- □ Move 1 有量化事实（城市现象 + 数字）
- □ Move 2 Gap 是单线推进的（传统聚焦 A → 忽视/缺陷 B → 本文做 C），B 具体可核查；不是空泛"没人做过"，也不是"两线相互承认但未交叉"
- □ Move 3 有发现方向（不只"做了什么"）

### 文献综述
- □ 按主题组织（theme 主导，实测 24/39），不是按时间罗列
- □ 每条文献线有标签（line A / line B）
- □ 以"transition to gap"收尾（实测最高频）

### 方法/数据
- □ 有数据来源表
- □ 每个方法选择有"为什么不用替代"的论证
- □ 无 "under standard conditions" 类空话

### 结果
- □ H3 标题是发现陈述，不是主题标签
- □ 报告效应量（Cohen's d / η²），不只 p 值
- □ 结果末句只暗示含义，不展开

### 讨论
- □ 开头用 7 种方式之一，多数不以"回归研究问题"开场
- □ 文献对话姿态多样（support/challenge/extend/nuance）
- □ 政策段命名行动者（urban planners / transit agencies）
- □ 时态正确

### 结论
- □ overclaim 检查（动词分级，见下）
- □ 不引入新引用/新数据
- □ 政策行动者与讨论一致

### 引用规范（对应 polish.md）
- □ 论断在前，引用在后
- □ 奠基人物（Hägerstrand, Kwan）可前置
- □ 多引用合成一句
- □ 无重复引用
- □ 拼写统一

---

## 四、overclaim 检查（结论/摘要必做）

**动词分级**——报告的事实强度决定动词：

| 论文实际做的 | 用 | 避免 |
|------------|----|----|
| 统计关联 | found, reported, observed | demonstrated, proved |
| 理论框架 | proposed, argued | established, confirmed |
| 支持性证据 | showed, provided evidence | proved |
| 可能趋势 | suggested, indicated | demonstrated |

**结论 overclaim 三问**：
1. 每个主张是否有数据支撑？（无 → 删或加限定）
2. "demonstrates/determines" 是否超出方法？（横断面不能 causal）
3. 局限段是否诚实？

---

## 五、句式模板库（来自真实语料，国产模型改英文的"保险"）

> **关键机制**：国产模型不自由写英文，而是**填空套模板**。模板**来自 数十篇 Cities 论文真实提取**（见 `journals/cities/*` 各章节的"句式语料库"节），不是凭知识写。模型只负责选对模板 + 填内容。

### 模板来源（按章节）

| 章节功能 | 真实语料所在 | 语料量 |
|---------|-------------|--------|
| 引言 Move 1-4 | `journals/cities/01-introduction.md` 九·句式语料库 | 246 条 |
| 文献综述 | `journals/cities/02-litreview.md` 六·句式语料库 | 143 条 |
| 数据 | `journals/cities/03-data.md` 五·句式语料库 | 46 条 |
| 方法 | `journals/cities/04-methods.md` 七·句式语料库 | 99 条 |
| 研究区域 | `journals/cities/05-studyarea.md` 五·句式语料库 | 60 条 |
| 结果 | `journals/cities/06-results.md` 七·句式语料库 | 165 条 |
| 讨论 | `journals/cities/07-discussion.md` 九·句式语料库 | 111 条 |
| 结论 | `journals/cities/08-conclusion.md` 五·句式语料库 | 127 条 |

### 快速参考（各章节核心模板摘录）

**引言 Gap（Move 2）：**
```
- Extant germane work has focused primarily on [A] without considering [B].
- While current research on [X] mainly concentrates on [A], [B] remains underexplored.
- X reveals Y but Z remains unclear.
```

**引言 贡献（Move 3）：**
```
- This study examines [issue] through the lens of [framework], taking into consideration [dimensions].
- This research contributes to the growing body of work on [topic], with a particular focus on [aspect].
```

**讨论 政策（policy）：**
```
- To address the issue of uneven [resource] distribution, it is necessary to implement policies that [action].
- [Actor] should [specific action], given that [finding].
```

**结果 发现陈述：**
```
- The results revealed that [finding], and [statistical detail].
- [Subject] ranks highest on [indicators], exceeding the [mean] by [magnitude].
```

**结论 收束：**
```
- This study set out to examine [RQ]. Using [data], we [method].
- These findings imply that [actor] should [action], because [evidence].
```

### 模板使用规则
1. **先诊断**（功能是什么，your local LLM 做）→ **再选模板**（该功能对应哪章语料库）
2. 模型只填 `[X]` 空位内容，**不改变模板句式结构**
3. 模板外需要新表达 → 标记出来，由规则层或 your API model 精修，不让 your local LLM 自由造英文
4. 每个模板在 Zotero 文献中有对应实例（语料库标注了来源论文）

**讨论（政策含义）**
```
- [Actor] should [specific action], because our results show that [finding].
- There is a need to [action] for [group/area], given that [finding].
- The current [policy] assumes [X], but our results show [Y], suggesting [revision].
```

**结果（发现陈述）**
```
- [Subject] [verb] [conclusion], with [magnitude] ([statistical test]).
- As shown in [Fig/Tab], [pattern] reveals [so-what].
```

**结论（收束）**
```
- This study set out to examine [RQ]. We show that [answer].
- These findings imply that [actor] should [action], because [evidence].
- Future research could [specific next step], e.g., [extension].
```

### 模板使用规则
1. **先诊断**（功能是什么）→ **再选模板**（该功能对应哪个模板）
2. 模型只填 `[X]` 空位的内容，**不改变模板句式结构**
3. 模板外需要新表达 → 标记出来，由规则层或 your API model 精修，不让 your local LLM 自由造英文
4. 每个模板在 Zotero 文献中有对应实例可查（见 journals/cities/* 的句式库）

---

## 六、国产模型三层执行协议

### 第一层：机器规则（脚本，零模型成本）

- [ ] 破折号扫描
- [ ] 引用重复检测
- [ ] 句子长度检测（>30 词）
- [ ] 万能模板检测
- [ ] 拼写统一表替换
- [ ] 双句号/缺空格/中文标点混入

### 第二层：本地 your local LLM（诊断 + 分级，低成本）

think:"low" + num_predict≥4000。**只诊断+分级，不自由改写英文**：

- [ ] 段落功能标签（stakes/gap/evidence/policy）
- [ ] 控制思想是否清晰
- [ ] 时态一致性粗查
- [ ] overclaim 动词初筛
- [ ] **对每个"问题句"判定级别：A（真错误）/ B（建议）/ C（不动）** ← 核心
- [ ] 对 A/B 级句，选择匹配的句式模板（C 级不动）

### 第三层：your API model API（重构，高成本，只重点段）

max_tokens≥32000（否则思考耗尽 out=0）。**只处理 A/B 级，用模板重构**：

- [ ] A 级（真错误）句子的论证修复（your local LLM 判定升级）
- [ ] B 级重点段（引言/讨论/摘要）模板化重写
- [ ] overclaim 仲裁
- [ ] **C 级（风格/偏好）一律不动**——即使 your API model 觉得"更标准"也不改

### 触发规则

```
机器层发现问题 → 记下
your local LLM 粗判 → 出诊断 + 选模板
重点/存疑 → your API model 模板化重写
英文自由表达 → 一律禁用（国产模型英文不可靠）
```

---

## 七、提示词模板（国产模型可直接用）

### your local LLM 诊断模板（只诊断+分级，不写英文）

```
你是城市研究论文审稿人。诊断以下段落，输出（中文）：
1. 段落功能（stakes/gap/evidence/mechanism/policy/limitation）
2. 控制思想是否清晰（首句是否核心idea）
3. 论证有无漏洞（论断无支撑？结论超数据？）
4. 时态是否一致
5. 对每个"问题句"判定级别，只输出 A/B/C，一句话理由：
   A=真错误（语法/逻辑断/引用重复/overclaim/缺数据），必须改
   B=明显可提升（生硬/冗长/可读性差），建议改
   C=风格/偏好（作者有意表达，改了不更好只不同），不动
   注意：作者有道理的写法归 C，不要强行改。
6. 对 A/B 级句，选择匹配的句式模板（Gap/贡献/对话/政策/发现陈述）
只诊断，不重写英文。
文本：...
```

### your API model 重写模板（填空式，套模板，只动 A/B 级）

```
你是城市研究期刊编辑。用给定句式模板重写以下段落。
规则：
1. 只改 A 级（真错误）和 B 级（明显可提升）句子
2. C 级（作者风格/偏好）一律不动——即使你觉得"更标准"也不改
3. 只套模板填空，不改变模板句式结构
4. 每句≤30词，一句一命题；不用破折号
5. 删除重复引用，论断在前引用在后
6. 不改变科学内容、不删引用、不夸大
可用模板：Gap=...；贡献=...；对话=...；政策=...
输出：润色后英文（修改处用【R】...【/R】标注）+ 每处修改的级别（A/B）+ 修改要点3条
文本：...
```

---

## 八、端到端润色流程

```
1. 读原稿 → 识别论文类型 + 章节职责（宪法§7 地图）
2. 机器层扫描 → 跑规则脚本，列问题清单（多为 A 级真错误）
3. your local LLM 逐段诊断 → 功能 + 论证漏洞 + **逐句分级 A/B/C** + 选模板
4. your API model 重点段重写 → 只动 A/B 级，模板化重写（C 级不动）
5. overclaim 检查 → 结论/摘要专项（A 级强制）
6. 英文校验 → 规则扫描（长度/冠词/介词/时态），不由模型自证
7. 合并 → 生成中英对照 docx（只 A/B 级标红，C 级保持黑字；原稿不动）
```

**核心提醒**：第 3 步 your local LLM 分级是灵魂——**C 级（作者风格）必须放过**。判断不清时宁可归 C 不动，不要过度润色。
8. 自查 → 过一遍本文件所有清单
```

---

## 九、与现有文件的关系

| 文件 | 关系 |
|------|------|
| `writing/polish.md` | 引用规范细节（论断在前等）→ 本文档引用清单引用它 |
| `writing/discussion-guide.md` | 讨论完整方法论 → 本文档讨论清单引用它 |
| `journals/cities/*` | 各章节实测模式 + 句式库 → 本文档城市专属清单和模板库的数据来源 |
| `writing/section-guide.md` | 通用章节规范 → 互补（它是写、这是润） |

> **一句话**：国产模型英文非母语，所以它们做**编辑**（诊断+选模板），英文地道性靠**规则+模板**保证，不让模型自由写英文。
