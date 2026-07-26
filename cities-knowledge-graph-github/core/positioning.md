# 竞品分析 (Competitive Positioning)

一篇 Q1 论文的核心问题不是"我做了什么"，而是**"相对于已有文献，我的贡献是什么"**。这需要在写作前、写作中、写作后持续进行竞品分析。

---

## 竞品分析框架

### 写作前：定位你的论文

对每条逻辑链（对象×议题×数据×方法），搜索 Zotero 库和在线文献，回答：

1. **谁在做？** — 哪些期刊/团队/城市在这个方向上发过论文？
2. **用什么方法做的？** — 你的方法组合（如 POI+街景）是否有人用过？
3. **用什么理论框架？** — 已有论文主要用什么理论？你的理论视角有何不同？
4. **数据粒度如何？** — 你的数据是否比已有研究更精细（时间/空间/样本）？

输出：**你的论文在这条链上的唯一位置**

### 写作中：引言的 Gap 陈述

引言中的 Gap 不要写"few studies have examined [X]"。这种写法可以被审稿人一句话反驳。

正确写法：

```
"While prior work has [done A] using [method/data],
and [done B] in [context],
no study has [done A+B] with [your method] in [your context]."
```

> 每一句"前人做了什么"都要对应一篇或一组具体论文（从 Zotero 库找）。引言的文献不是装饰，是你的竞品地图。

### 写作后：讨论中的文献对话

讨论不是把结果复述一遍，而是**把你的发现放回竞品地图中**：

| 你的发现 vs 已有文献 | 讨论中的写法 |
|-------------------|------------|
| 你的发现支持前人 | "Our findings reinforce [Author]'s argument that [mechanism], extending it to [new context/new data]." |
| 你的发现挑战前人 | "In contrast to [Author], who found [X], we observe [Y]. This divergence likely stems from [institutional/methodological difference]." |
| 你的发现填补空白 | "While [Author A] documented [X] and [Author B] showed [Y], the intermediate mechanism linking them remained unclear. Our results suggest [mechanism]." |

---

## Gap 发现 = 竞品地图上的空白

不要问"有没有人做过X"（二元问题），要问：

```
在 [对象×议题×数据×方法] 这条链上：
- 哪些环节的组合已被充分研究？
- 哪些环节是新的组合？
- 新组合是否揭示了一个不同的问题？
```

一个组合即使所有环节都有人做过，只要**组合本身是新的**，就是合法的贡献——但你必须明确说明为什么这个新组合能揭示不同的问题。

---

## 实战：用 Zotero 做竞品分析

```python
# 快速竞品扫描：搜相似论文
import sqlite3
conn = sqlite3.connect('/path/to/your/zotero.sqlite')  # copy it first!
# 按主题词 + 方法词 + 城市类型搜索
# 输出：论文列表 + 对每条逻辑链的位置标注
```

竞品分析应输出一个简洁的判断：
> "你的论文在逻辑链上的位置是 [对象X] × [议题Y] × [数据Z] × [方法W]。最接近的竞品是 [3-5篇论文]（分别在哪一环不同）。你的主要贡献是 [哪一环的创新] 使你能够回答 [什么问题] 而现有论文不能。"
