# 文献综述与对比 (Literature Review & Benchmarking)

文献综述不是"罗列谁做了什么"。它的功能是**精准定位你的论文在已有文献中的唯一坐标**。

---

## 三层文献综述法

### Layer 1: 领域扫描（你的论文属于哪个对话？）

搜 Zotero + 在线数据库，定位 3-5 个**最接近的论文集群**：

| 集群 | 代表论文 | 他们在链上的位置（对象/议题/数据/方法） | 你的位置有何不同？ |
|------|---------|--------------------------------------|-----------------|
| 集群1 | [3-5篇] | [链描述] | [你的不同] |
| 集群2 | [3-5篇] | [链描述] | [你的不同] |

> 如果找不到 3 个接近的集群 → 你的 Gap 可能太大（审稿人找不到参照系）。找最接近的，哪怕某一环不同。

### Layer 2: 逐篇对比（你比别人多做了什么？）

选最接近的 3-5 篇论文，逐篇对比：

```
论文A（最接近的竞品）:
  相同: [研究对象/议题/方法/城市类型...]
  不同: [你的数据粒度更细 / 你的时间跨度更长 / 你的方法能捕捉非线性 / ...]
  → 你的贡献: 正因为[不同]，你能回答[问题]而论文A不能
```

> **这不是贬低别人的论文。** 写的时候是 "While [Author A] established [finding X] using [method], our [approach] extends this by [contribution]"。

### Layer 3: Gap 精确陈述（写作直接可用）

从对比中提炼 2-3 句 Gap 陈述，放入引言：

模板：
> "Prior work has documented [finding A] using [data/method] in [context] (refs), and separately shown [finding B] in [different context] (refs). However, whether and how [A and B interact / A applies to new context / the mechanism linking A to B] remains unclear, particularly because existing studies have relied on [data/method limitation] that cannot [capture/test/measure] [key variable or mechanism]."

---

## 用 Zotero 做系统文献对比

### 步骤1: 按逻辑链逐环检索

```python
# 搜对象：你的研究对象在哪些论文中出现？
# 搜议题：你的议题归属有哪些论文？
# 搜方法：你的方法在哪些论文中被用于不同的问题？
# 搜数据：你的数据类型被用于哪些不同的议题？

# 对每个搜索结果标注它在逻辑链上的位置
# 交叉比对找出"最接近但不同"的论文
```

### 步骤2: 建立竞品矩阵

| 论文 | 对象 | 议题 | 数据 | 方法 | 城市 | 年份 | 与你的差异 |
|------|------|------|------|------|------|------|----------|
| [Ref1] | [x] | [x] | [~] | [x] | [~] | 2024 | 数据不同 |
| [Ref2] | [x] | [~] | [x] | [x] | [~] | 2023 | 议题不同 |
| [Ref3] | [~] | [x] | [x] | [~] | [~] | 2025 | 方法不同 |
| **你的论文** | **[x]** | **[x]** | **[x]** | **[x]** | **[新的]** | — | **组合创新** |

`[x]` = 相同, `[~]` = 相似, `[空白]` = 不同

### 步骤3: 提炼你的贡献声明

从竞品矩阵中，你的贡献必然落在这几个类别之一：

| 贡献类型 | 说明 | 引言中的写法 |
|---------|------|------------|
| **新数据** | 用更精细/更大规模/更长时间的数据研究老问题 | "Using [new data] that captures [dimension] at [scale], we revisit [established question]..." |
| **新方法** | 用不同方法揭示同一问题的不同维度 | "While prior studies rely on [old method] which assumes [limitation], we apply [new method] to capture [new dimension]..." |
| **新语境** | 将已验证的机制在新城市/国家/制度中检验 | "Whether [established mechanism] extends to [new context], where [institutional difference] may alter the relationship, remains untested..." |
| **新组合** | 将两个已有但分离的文献线合并 | "These two strands of literature—[A] and [B]—have developed in parallel. We bridge them by [approach]..." |

> ⚠️ **[DATE] 真实语料核查**：上表"新组合"是**贡献类型分类**（你提供了什么贡献），不是 **Gap 句写法**。真实论文的 Gap 句几乎全是单线推进式（传统聚焦 A → 忽视/缺陷 B → 本文做 C）；"两条文献线相互承认但交汇点/从未交叉"的写法在真实语料中不存在。跨线研究（如时间使用 × 活动空间）也只以"忽视 B"单线表述。贡献声明可以说 "we bridge two strands"，但 Gap 句不能用"两线未合并"结构。Gap 写法详见 `journals/cities/01-introduction.md` 第三节（[DATE] 重写）。
| **新问题** | 提出一个此前未被问过的问题（风险最高，回报最大） | "While existing work has focused on [X], we ask a different question: [Y]?" |

---

## 从文献综述到引言写作

文献综述的产出（竞品矩阵 + Gap陈述）直接变成引言的材料：

```
引言 Structure          ← 文献综述产出
─────────────────────────────────────────────
Move 1: 问题重要         ← 领域扫描中最有说服力的数字/趋势
Move 2: Gap在哪          ← 竞品矩阵 + Layer 3 Gap陈述
Move 3: 我们做了什么      ← 你的贡献声明
```

> 引言中引用的每一篇论文，都必须在竞品矩阵中有位置。如果一篇论文在引言中被引用但没有出现在竞品分析中 → 要么补进矩阵，要么从引言中删掉。

## 文献综述的常见错误

- ❌ 罗列式的"Author A found X. Author B found Y. Author C found Z." — 没有综合，没有对比
- ❌ 每个引用一句话带过 — 关键的竞品论文需要 2-3 句说明方法和发现
- ❌ 只引用支持自己的论文 — 必须引用挑战你的论文，并在讨论中回应
- ❌ 引用的论文太老（>15年）且不经典 — 除非是领域创始文献，优先引用近 5 年
- ❌ 大量引用中文期刊 — 国际审稿人不熟悉。优先英文期刊，中文文献可放进 supplementary
