---
name: cities-knowledge-graph
description: >
  城市研究 Q1 英文论文端到端生产系统。
  覆盖：实验设计 → 文献综述与对比 → 中国叙事国际化 → 竞品定位 → 章节写作 → 润色。
  逻辑链：研究对象 × 议题 × 数据 × 方法 → 论文。
  集成 Zotero 本地 ~852 篇 Q1 论文库作为竞品情报。
  Triggers: 城市研究/研究设计/实验设计/文献综述/不平等/流动性/英文论文/投稿/
  urban inequality/mobility/transport equity/manuscript/Q1 journal.
---

# Cities Manuscript Engine

目标：**发一篇城市规划领域 Q1 英文论文。** 从实验设计到投稿。

## 核心逻辑链

```
研究对象 → 议题归属 → 数据来源 → 方法论 → 论文
```

## 工作流

```
研究前段                     研究中段                      研究后段
───────                     ───────                      ───────
实验设计                      文献综述                      引言写作
(experiment-design.md)      (literature-review.md)       (section-guide.md §引言)
     │                           │                            │
     ▼                           ▼                            ▼
确定比较/方法/样本          Zotero竞品矩阵                  Move 1/2/3
排除替代解释                Gap精确陈述                    贡献声明
     │                           │                            │
     └───────────┬───────────────┘                            │
                 ▼                                            │
          逻辑链定位 (logic-chain.md)                          │
          竞品分析 (positioning.md)                            │
                 │                                            │
                 ▼                                            ▼
          中国→国际转换 (cn-to-intl.md)              结果/讨论/结论
          研究对象定义 (objects.md)                   (section-guide.md)
                 │                                            │
                 ▼                                            ▼
          ┌─────────────┐                            润色 (polish.md)
          │ Zotero ~852 │                            桥接 urban-study-manuscript
          │ 竞品情报库   │                            桥接 nature-polishing
          └─────────────┘
```

## 模块路由

| 需要什么 | 文件 |
|---------|------|
| **研究前段** | |
| 设计实验、确定方法和样本 | `core/experiment-design.md` |
| 文献综述、Zotero竞品对比 | `core/literature-review.md` |
| 确定研究对象 | `objects.md` |
| 中国叙事转国际议题 | `core/cn-to-intl.md` |
| 逻辑链编排（设计+写作双向） | `core/logic-chain.md` |
| 论文在文献中的定位 | `core/positioning.md` |
| **议题知识** | |
| 不平等与空间正义 | `themes/inequality.md` |
| 流动性与交通 | `themes/mobility.md` |
| 添加新议题 | `themes/_template.md` |
| **写作后段** | |
| 章节写作（问题定义→结果→讨论→结论） | `writing/section-guide.md` |
| 英文润色/中译英 | `writing/polish.md` |
| 桥接其他 skill | `writing/bridge.md` |
| **数据** | |
| Zotero 论文库查询指南 | `corpus.md` |
| **演示** | |
| 完整案例 | `examples/walkthrough.md` |
