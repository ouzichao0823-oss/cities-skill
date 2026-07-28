# 文献综述战略简报

> 基于宪法生成。通用模板 + 自检。期刊特调见 `journals/<journal>.md`。

---

## ⚠️ 强制前置检查（写任何文献综述内容前必须完成）

```
1. 宪法 §2 核心命题（逐字复制）: "[从constitution.md §2复制]"

2. 每条文献脉络一句话:
   脉络A: [名称] — 核心论点: [一句话]
   脉络B: [名称] — 核心论点: [一句话]
   交叉空白: [A和B从未在什么维度上交叉？]

3. 内容过滤器（逐条打勾）:
   □ 是否所有引用的论文服务核心命题？
   □ 是否有"本研究""本文提出"等引言内容？
   □ 是否有假设性举例（"两个总工时相同的人..."）？
   □ 是否引用了日周期隔离等不相关脉络？
   □ 是否每处引用都核实了原文（不挂羊头卖狗肉）？
```

---

## 核心任务

让审稿人读完后说："我理解了为什么现有的论文不能回答这个问题，以及为什么这个新研究是必要的。"

---

## 战略参数（从宪法提取）

```
核心命题: [宪法§2]
理论透镜: [宪法§3]
Gap 类型:  [宪法§5]
竞品坐标:  [宪法§5 — 全部竞品论文，按脉络分组]
贡献类型:  [宪法§6]
```

---

## 脉络设计

基于宪法 §5 的竞品坐标，确定需要建立的文献脉络：

### 脉络数 = 你的 Gap 需要几条线交叉

| Gap 类型 | 典型脉络数 | 脉络设计 |
|---------|----------|---------|
| 新组合 | 2条主脉络 + 交叉点 | 脉络A(来自议题1) + 脉络B(来自议题2) → 交叉空白 = 你的 Gap |
| 新语境 | 1条主脉络 + 语境差异 | 脉络A(已有语境下的发现) → 你的语境为何不同 |
| 新数据 | 1条主脉络 + 方法局限 | 脉络A(已有数据能/不能做的) → 新数据的独特能力 |
| 新方法 | 1条主脉络 + 方法对比 | 脉络A(已有方法的发现+局限) → 新方法能揭示什么 |
| 新问题 | 2-3条相关脉络 | 多条脉络从不同角度接近但都不完全回答你的问题 |

### 每条脉络的设计

```
脉络[X]: [脉络名 — 这是什么样的学术对话？]

代表性论文（3-5篇）:
| 论文 | 做了什么 | 在这条脉络中的位置 | 和你的研究的关系 |
|------|---------|-----------------|---------------|
| [A]  |         | 奠基/代表性工作   | 你的研究基于此 → 需要深度讨论 |
| [B]  |         | 最新进展/修正A    | 你的研究补充/挑战 → 需要深度讨论 |
| [C]  |         | 提供了方法        | 方法参考 → 一句提及即可 |
| [D]  |         | 提供了数据        | 数据参考 → 一句提及即可 |
| [E]  |         | 不同语境但相似问题 | 语境对比 → 讨论中用 |

对于 [A] 和 [B]（核心竞品）: 需要 2-3 句讨论
对于 [C] 和 [D]（支撑引用）: 一句提及即可
```

---

## 必须排除的内容

基于宪法，以下内容不该出现在文献综述中：

```
1. 和核心命题无关的文献脉络
   → 理由: 会稀释 Gap 的锋利度
   → 实例: 时间预算论文的文献综述不应包含日周期隔离研究(Le Roux, Xian, Sun)
     因为日周期(time-of-day) ≠ 时间预算配置(weekday-weekend distribution)

2. 只在讨论中需要引用的论文
   → 理由: 讨论是"对话"，综述是"定位"。功能不同。
   但如果讨论中的核心竞品不在综述中铺垫 → 需要加入

3. 纯粹的背景知识介绍（如"什么是时间地理学"）
   → 理由: Q1 期刊的审稿人不需要你科普基础理论。
   但如果理论是你的核心透镜 → 用 1-2 句说清它为什么适合你的问题

4. 并非来自 Zotero 库的论文
   → 理由: 必须是真实存在的论文。如果发现需要但 Zotero 里没有，
   使用 nature-academic-search 检索并验证。

5. 属于引言 Move 3 的内容（"本研究引入""本文提出"等）
   → 理由: 文献综述的功能是建立已有文献的格局，不是预告自己的方法设计
   → 实例: "本研究引入周末工作时长和周末居家时长作为两个新增维度"——这是引言 Move 3

6. 假设性举例（"两个总工时相同的个体可能生活在..."）
   → 理由: 文献综述的每一句话都应该有文献支撑
   → 替代: 用 Schönfelder(2002), Toger(2023) 等实际研究发现来论证

7. 方法论细节（NMF的数学推导、K-means的算法步骤等）
   → 理由: 属于 Methods 章节。文献综述中方法只需论证"为什么选这个"，不需论证"怎么做"

8. 引用与表达不一致（"挂羊头卖狗肉"）
   → 理由: 每处引用必须核实原文——Chatterjee(2020)是综述不是"指标"，
     Tao et al.(2020)中工时是控制变量不是核心解释变量
```

---

## 引用密度控制

```
总引用数: 20-35 篇（文献综述部分）

密度分配:
  核心竞品 (2-3句/篇): 5-8 篇 → 占据 ~50% 的篇幅
  支撑引用 (1句/篇):   12-20 篇 → 占据 ~35% 的篇幅
  理论渊源 (1-2句/篇):  3-5 篇 → 占据 ~15% 的篇幅

反模式:
  ❌ 每篇论文都只给一句话 → "Author A found X. Author B found Y. Author C found Z."
  ✅ 核心竞品给深度讨论，支撑引用一笔带过
```

---

---

## 每段论证骨架（手把手模板）

### 脉络段的标准结构

```
句1 — 控制思想: [这条脉络的核心论点是什么？一句总结。]
句2-3 — 证据1: [核心竞品A] found that [specific finding] using [method] in [context].
         这说明了 [what this means for the argument].
句4-5 — 证据2: [核心竞品B] extended this by [showing/testing] [new dimension].
         然而 [limitation: 什么维度被忽视了 / 什么变量被当成了给定的].
句6 — 综合判断: Together, these studies establish [what we know].
         但 [what remains unexamined] 因为 [methodological/conceptual reason].
```

### 实例（时间预算脉络）

```
句1: 时间使用研究建立了一条稳健的因果链：长工时→自由时间减少→休闲受限→空间收缩。
句2-3: Nie et al. (2015) found that long working hours significantly worsen health
       among Chinese adults using CHNS panel data. Chatterjee et al. (2020) confirmed
       in a systematic review that commuting duration is robustly associated with
       lower well-being and leisure satisfaction.
句4-5: Carmichael et al. (2025) showed that when long hours and long commutes coincide,
       time poverty rates rise substantially. Yet across all these studies, time is
       operationalized through total working hours alone.
句6: Together, they establish a one-dimensional causal chain. But whether different
     temporal configurations—not just total volume—produce different spatial outcomes
     has not been examined.
```

---

## 宪法一致性检查

□ 文献综述建立的每条脉络是否都在为宪法§2(核心命题)铺垫？
□ 核心竞品是否全部出现在宪法§5 竞品坐标中？
□ 脉络交叉处是否是宪法§5 声明的 Gap？
□ 是否出现了宪法§5 未列出的新竞品 → 如果是，更新宪法§5
□ 每条脉络是否用了"句1→句2-3→句4-5→句6"的论证骨架？
□ 中文和英文段落是否同步更新？
