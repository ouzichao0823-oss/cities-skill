# Mobility & Transport — 流动性与交通

人、物、信息在城市空间中的移动模式、决定因素和社会-空间后果。

---

## 领域边界

**核心问题**：谁在移动？去哪里？以什么方式？付出什么代价？产生什么影响？

**与相邻主题的区分**：
- vs 交通工程：流动性关注社会-空间-行为维度，交通工程关注效率-容量-安全
- vs 不平等：流动性关注"移动的模式和机制"，不平等关注"移动资源的分配后果"
- 交叉处 = 交通公平/可达性正义

---

## 子议题（12个）

| # | 子议题 | 核心 RQ 模板 | 典型研究对象 | 常用数据 | Zotero 参考 |
|---|-------|------------|------------|--------|-----------|
| 1 | 通勤与职住关系 | "职住空间(错)配如何塑造通勤模式和幸福感？" | 人的位置(居住地+工作地) | 手机信令、普查 | C35, C54, C64, C73 |
| 2 | 可达性测度 | "[某设施/机会]的可达性如何随空间和群体变化？" | 人的位置+设施分布 | POI、GTFS、手机信令 | C48, C66 |
| 3 | 15分钟/20分钟城市 | "设施供给与居民实际使用是否匹配？阈值在哪里？" | 人的位置+设施分布+实际使用 | POI+手机信令(关键组合) | C3, C49, C38 |
| 4 | 微出行 | "e-bike/e-scooter为何被采用？如何重塑出行？" | 人的出行模式+设施(充电桩/停放点) | GPS轨迹、调查 | C33, C34, C41 |
| 5 | TOD | "公交投资如何改变土地利用、出行行为和房产价值？" | 交通设施+人的出行+土地利用 | 公交卡、房价、POI | JTG文献 |
| 6 | 建成环境与出行 | "建成环境通过什么非线性机制影响出行行为？" | 人因指标(密度/混合度/设计)+人的出行 | 手机信令、POI、街景 | C20, C6, C30, C31 |
| 7 | 网约车/共享出行 | "网约车如何影响拥车率/公交使用/劳动力市场？" | 人的出行+交通设施(网约车) | 手机信令、OD数据 | C51, C24 |
| 8 | 主动出行 | "什么建成/社会环境因素促进或抑制步行和骑行？" | 人的出行(步行/骑行)+人因指标 | GPS、街景、调查 | C30, C7, C13 |
| 9 | 交通碳排放 | "城市形态/出行行为如何贡献于交通碳排放？" | 人的出行+自然指标(排放) | 交通流、能耗 | C26 |
| 10 | 城市活动模式 | "城市活动的时空节律及其社会-空间驱动因素？" | 人的位置(全活动) | 手机信令、POI | C16, C25, C29 |
| 11 | 多中心城市与出行 | "多中心发展如何重塑出行距离和模式选择？" | 城市空间结构+人的通勤 | 手机信令、POI | C28, C68 |
| 12 | 交通设施社会影响 | "新交通设施对周边社区的社会/空间后果是什么？" | 交通设施+人的社会经济属性 | 多源综合 | C18, C83, C2 |

> 中国语境特有变量：**车牌摇号/限行、共享单车的全球最大实验场、地铁扩张速度世界第一**——这些都是天然的准实验条件。

---

## 方法论要点

**核心方法**：可达性模型(2SFCA/重力)、离散选择(MNL/Mixed Logit)、GBDT/XGBoost+SHAP、MGWR、网络分析

**趋势**：非线性ML替代线性回归成为默认（2023-）、活动视角替代单次出行视角、多源融合

**方法陷阱**：
- 建成环境-出行的自选择(self-selection) — 是喜欢步行的人选择了步行友好社区，还是社区促成了步行？
- 可达性测度的参数敏感性 — 阈值选择大幅影响结果
- 用供给端指标评估需求端体验 — 15分钟城市指标的常见问题

---

## 研究对象焦点

**人的维度**：位置与移动 > 社会经济属性 > 主观感受（出行满意度）
**地的维度**：交通设施(地铁/公交/充电桩) > 人因指标(密度/混合度/道路密度/绿视率) > 自然指标(地形/气候)

---

## 叙事逻辑

```
引言: 城市流动性面临[效率/公平/可持续]挑战 → 但我们对[非线性机制/多尺度/特定群体]了解不足
结果: 模式描述(可达性/出行的空间格局) → 影响因素(非线性阈值) → 异质性(不同群体/空间)
讨论: 综合 → 机制(阈值和交互效应) → 文献对话(挑战或支持传统BE假设) → 规划含义(在哪里建什么)
```

与不平等论文的区别：流动性讨论强调**非线性阈值发现**（"在X处效应达到阈值"）和**空间异质性**（"城市中心与郊区不同"），不平等讨论强调**分布差距的量级**。

---

## 跨主题关联

- **× 不平等**（最密集，18+篇）：交通公平、可达性分组差异。共享方法：活动空间分析、基尼分解
- **× 城市结构**（9篇）：多中心-通勤、形态-出行。共享变量：密度、混合度、中心性
- **× 健康**（7篇，增长中）：主动出行-健康、通勤-心理健康。共享变量：步行/骑行频率、满意度
- **× 环境**（Gap）：交通碳排放、微出行的全生命周期环境足迹

---

## 写作词库

**核心术语**：mobility, accessibility, connectivity, proximity, trip/journey/commute, modal share, walkability/bikeability, first/last mile, catchment area, origin-destination, motility

**非线性发现语言（ML驱动趋势）**："exhibits a threshold at [value]", "the marginal effect diminishes beyond [value]", "nonlinear and non-monotonic", "plateaus after [value]"

**中国语境特需**：jobs-housing balance (职住平衡), dockless bike-sharing (共享单车), ride-hailing/wangyue che (网约车), car purchase/driving restrictions (限购/限行), e-bike (电动车—在中国是主流出行方式，不是边缘微出行)

**避免**：笼统的"travel behavior is complex"、无方向的"the built environment matters"、盲目拥护"15-minute city will solve..."、假设公交总是好选择

---

## 文献综述写作模式（从 Zotero 库中 25 篇 mobility/活动空间论文摘要提取）

### 模式 1：时间维度缺失的经典 Gap 陈述

Mobility 论文在陈述"时间被忽视"时的标准句法：
```
"[Topic] has traditionally been studied through [static lens], yet [temporal dimension] remains underexplored."

实例:
- "Traditional urban analysis methods primarily rely on static data sources and have limitations in capturing these temporal dynamics."
- "Recent studies on gendered activity patterns often rely on statistical or residential data and lack a spatiotemporal perspective."
```

### 模式 2：活动空间超越居住地的论证推进

从"居住隔离"到"活动空间隔离"是 mobility 文献综述的核心论证线：
```
段 1: "The literature has traditionally focused on residential segregation, examining how individuals' residential locations are distributed differently across neighborhoods based on various social attributes."
段 2: "However, this approach overlooks the complexity of segregation experienced in daily mobility."
段 3: "In recent decades, increasing attention has been given to the segregation experienced in activity spaces beyond the well-examined residential locations."
```

### 模式 3：零和时间的机制陈述

时间预算文献的标准因果链表述：
```
"Long working hours → reduced discretionary time → constrained out-of-home activity → contracted activity space."
每个箭头对应一组引用。
```

### 模式 4：非通勤出行的概念区分

```
"Non-mandatory activities (e.g., shopping and leisure) are irregular in space and time, resulting in complex interactions between individuals and urban spaces."
→ 强调非通勤出行的时空不规律性 → 因此需要大规模连续时间数据（手机信令）→ 自然引出方法论选择
```

### 模式 5：工作模式→空间后果的交叉句式

```
"However, the existing research has not systematically examined how working hours interact with spatial factors in shaping leisure behavior."
→ 句式骨架: "[时间变量] interact with [空间变量] in shaping [行为结果]."
→ 这是 mobility × inequality 交叉的核心句式
```

### 模式 6：Mobility 特有的高频术语搭配

| 搭配 | 使用场景 |
|------|---------|
| `spatiotemporal interaction between individuals and their environment` | 定义活动空间 |
| `beyond the well-examined residential locations` | 论证从居住→活动的转向 |
| `temporal mismatches between urban demand and available resources` | 指出时间维度的规划忽视 |
| `irregular in space and time` | 描述非通勤出行的特征 |
| `collective activity space` | 区别于个体活动空间的群体层面测度 |
| `static data sources...have limitations in capturing temporal dynamics` | 方法局限→数据需求 |
| `systematically examined how [X] interact with [Y]` | Gap 陈述的核心动词 |

### 模式 7：方法选择论证（文献综述中交代"为什么用这个方法"）

当论文使用已有的定量方法组合时，文献综述中的方法部分应遵循「可选方法→能力与局限→我们的选择→为什么」的论证结构。这不是方法创新声明，而是**方法适配性论证**。

**标准骨架**（四段，对应四个方法步骤）：
```
段 1 — 分类方法:
  "[Classifying X] can proceed through [N] broad strategies. "
  "The first, predominant in [literature], [does Y]. This approach, while well established, cannot [limitation]."
  "The second [does Z], an approach that [limitation]."
  "The third, adopted here, [chosen method]."
  "The number of clusters is determined by [validation criteria], ensuring that the resulting typology is data-driven rather than arbitrarily imposed."

段 2 — 测量方法:
  "[Single-metric approach] is insufficient for the present research question: testing [hypothesis] requires [multidimensional framework]."
  "We therefore adopt [validated framework], operationalized through [N] indicators that capture distinct aspects of [phenomenon]."

段 3 — 模式提取方法:
  "[Method A] assigns each individual to a single category, which precludes [capability needed]."
  "[Method B] allows [capability] but [limitation]."
  "[Chosen method] addresses both limitations: [what it does and why it fits]."
  "We follow [reference framework], extending it by [specific extension]."

段 4 — 偏好量化方法:
  "[Conventional approach] captures [X] but is inherently unidirectional: what people do, not what they systematically do not do."
  "[Chosen method] addresses this by [mechanism]."
  "We therefore apply [chosen metric] with [threshold] to simultaneously identify [both directions]."
  "This [directionality] is central to the research question: if [mechanism], the signal should appear in [specific direction], which [conventional analyses] systematically miss."
```

**关键原则**：
- 每个方法选择都追溯到研究问题的具体需求——不是"我们用 NMF 因为它流行"，而是"我们用 NMF 因为我们需要捕捉节律叠加，而聚类和 LDA 做不到"
- 承认替代方法的存在并解释为什么不够——这是诚实的学术姿态
- 延伸(extend)而非照搬(replicate)——"We follow [framework], extending it by [specific addition]" 是合法的方法论贡献
- 限制条件透明——聚类数由验证指数共识确定，阈值由数据分布决定
