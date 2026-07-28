# 引言战略简报

> 通用模板。期刊特调见 `journals/<journal>.md`。

---

## ⚠️ 强制前置检查（写任何引言内容前必须完成）

**在写出引言第一句话之前，必须向用户输出以下三项内容。未完成不准开始写。**

```
1. 宪法 §2 核心命题（逐字复制）: "[从constitution.md §2复制]"

2. 本文要回答的两个问题（≤50字/个）:
   Q1: [问题1]
   Q2: [问题2]

3. 五段论证弧线（每段一句话）:
   段1 TENSION: [一句话——建立什么矛盾/悖论？]
   段2 WHY LIT CAN'T: [一句话——两条文献线的共同盲点是什么？]
   段3 QUESTIONS: [Q1 + Q2]
   段4 APPROACH: [数据+方法，不预设发现]
   段5 CONTRIBUTION: [一般性贡献陈述，不预设发现]
```

**自检清单（输出前逐项打勾）**:
- [ ] §2 核心命题里有没有出现"周末"？如果有 → 删掉，§2 写错了
- [ ] 段 3 的问题是不是 ≤ 2 个？
- [ ] 段 4/5 有没有 "We find that..." 或任何具体发现？如果有 → 删掉
- [ ] 如果论文有独立 Lit Review 节，段 2 是否 ≤ 1 段？
- [ ] 是否加载了 `journals/<target>.md` 的特调规则？

---

## 引言的任务

引言不是"介绍背景"。引言是**建立你的论文不可或缺的五段论证弧线**。
每段只有一个任务。每段创造下一段的需要。

---

## 通用五段模板

### 段 1: TENSION（建立张力）

**任务**: 建立一个矛盾、悖论或未被检验的假设。不是描述背景。

**句法骨架**:
```
[领域] has been built on [premise/assumption]. [Evidence of investment/scale].
Yet [premise] does not guarantee [outcome], because [missing dimension].
For [specific group/context], [the consequence]. [This gap/tension] is the
starting point of this study.
```

**反模式**:
- ❌ "With the rapid development of urbanization..." — 万能模板
- ❌ "X is an important issue that affects many people..." — 没有张力
- ❌ 在此描述城市空间结构、产业地理 — 属于 Section 3
- ❌ 列举四个角色逐一描写 — 1 个通用案例即可

**自检**: 如果审稿人读完第一段只说"嗯，我知道了"而不是"有意思，然后呢？"——张力不够。

---

### 段 2: WHY EXISTING RESEARCH CANNOT RESOLVE IT（文献不能解决的原因）

**任务**: 说明为什么现有文献无法回应该张力。不是写小文献综述。1-2 句即可。

**句法骨架**:
```
This [gap/tension] persists because the [N] bodies of research that bear on it
[share a common limitation / have not treated X as Y]. [Body A] has established
[findings] (refs), yet [limitation: what it collapses / misses / controls away].
[Body B] has documented [findings] (refs), yet [limitation: how it treats the
key variable]. As a result, [the specific question] remains open.
```

**关键规则**:
- 如果论文有独立 Literature Review 节，段 2 最多 1-2 句点出两条文献线的共同盲点
- 不要在段 2 引用大量论文——详细论证留给 Section 2
- 不要在此列举谁做了什么——这是 Section 2 的工作

**反模式**:
- ❌ "Existing research is not well equipped to answer this question, because..." — 元论述
- ❌ 用 2-3 段写小文献综述 — 审稿人读到 Section 2 会感到重复

---

### 段 3: QUESTIONS（明确研究问题）

**任务**: 用 1-2 个显式问题或假设陈述你研究要回答什么。**必须 bold**，让审稿人一眼看到。

**句法骨架（问题型）**:
```
This study therefore asks [N] questions. First, does [X] constitute [Y]? That is,
[operationalized version of the question]? Second, if [X] does [Y], what specific
[outcomes] does it shape, and how do these effects manifest in [observable patterns]?
```

**句法骨架（假设型）**:
```
This study tests [N] hypotheses. H1: [X] is an independent dimension of [Y],
producing differences not reducible to [Z]. H2: the effect of [X] is dimensionally
selective, concentrated on [specific outcomes] rather than uniform.
```

**关键规则**:
- 必须是**可检验的**命题，不是"我们想了解..."
- 1-2 个问题，不多于 2 个
- 问题必须在前两段建立的张力中自然产生
- **不要预设答案**——问题里不要包含"我们发现周末很重要"之类的结果

**反模式**:
- ❌ 问题藏在段落里 — 审稿人找不到
- ❌ 问题超过 2 个 — 论文聚焦不够
- ❌ 问题里包含了具体发现 — 那是 Result，不是 Question

---

### 段 4: APPROACH（如何回答）

**任务**: 描述数据、方法和分析步骤。**不预设结果。**

**句法骨架**:
```
To answer these questions, we draw on [data] from [N] [subjects] in [city].
[Subjects] are classified by [X] using [method] on [N] dimensions: [list].
[Supporting analyses: spatial mapping, measurement, validation, extraction,
quantification] (refs).
```

**关键规则**:
- 覆盖全文所有方法步骤：分类→职住空间→活动空间测度→独立效应检验→模式提取→偏好量化
- 每个步骤 1 句，不展开方法论细节
- 不要在此报告发现

---

### 段 5: CONTRIBUTION（一般性贡献陈述）

**任务**: 陈述论文贡献。**不预设具体发现。**用 "tests whether", "demonstrates an approach", "contributes to understanding" 等一般性措辞。

**句法骨架**:
```
By addressing these questions, this study contributes to [field] in [N] ways.
First, it tests whether [X] constitutes [Y] independent of [Z], and whether its
effects are uniform or selective. Second, by combining [methods] within a single
empirical design, it demonstrates an approach that makes [research area]
empirically tractable—an approach applicable beyond [this specific context].
```

**反模式**:
- ❌ "We find that weekend time is the decisive parameter..." — 这是 Result，不是 Contribution 陈述
- ❌ "Our findings suggest..." — 结论还在改，引言不应预设

---

## 宪法一致性检查

□ 段 1 的张力是否对应宪法 §1（种子）和 §2（核心命题）？
□ 段 2 的文献盲点是否对应宪法 §5（竞品坐标）的 Gap 类型？
□ 段 3 的问题是否直接来自宪法 §2 的核心命题？
□ 段 4 的方法是否覆盖了宪法 §4（逻辑链）的全部环节？
□ 段 5 的贡献是否对应宪法 §6（贡献声明）？
□ 全文没有预设宪法中标记为 [tentative] 的发现？
