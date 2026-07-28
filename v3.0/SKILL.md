---
name: cities-knowledge-graph
description: >
  城市研究 Q1 英文论文端到端生产系统。宪法驱动螺旋循环。Zotero 本地论文库集成。
version: 3.0.0
---

# Cities Manuscript Engine v3

> **宪法第一原则**：每次对话第一步，读取 constitution.md。每次对话最后一步，写回 constitution.md。

---

## 触发关键词

### 中文
`城市研究` `研究设计` `实验设计` `文献综述` `引言` `讨论` `结论` `方法` `结果` `摘要` `标题`
`不平等` `流动性` `交通` `可达性` `活动空间` `时间预算` `时间贫困` `通勤` `隔离` `分异`
`英文论文` `投稿` `Q1` `SSCI` `Cities` `Nature Cities`
`怎么写` `帮我写` `润色` `翻译` `改英文` `查文献` `找gap` `研究思路` `开题`
`手机信令` `POI` `街景` `GPS` `大数据`

### English
`urban studies` `urban inequality` `mobility` `transport equity` `accessibility`
`activity space` `time geography` `time poverty` `commuting` `segregation`
`manuscript` `Q1 journal` `literature review` `introduction` `discussion`
`mobile phone data` `big data` `GIS` `spatial analysis`

### Intent triggers (any language)
- "我想研究[话题]" → Entry A: vague-interest
- "我有[数据]" → Entry B: have-data
- "我读了[论文]" / "我的gap是什么" → Entry C: have-literature
- "我跑出了[结果]" → Entry D: have-results
- "帮我写[章节]" → Entry E: need-section
- "帮我检查[全文]" → Entry F: full-audit
- "润色这段英文" → bridge → nature-polishing
- "帮我画图" → bridge → nature-figure

---

## 硬闸门规则（不可跳过）

### GATE-1: 宪法读取（每次对话开始时）
```
模型必须在第一轮对话中读取 constitution.md。
未读取宪法 = 不准进入任何入口。
```
### GATE-2: 引用验证（引用任何论文前）
```
每处引用必须通过验证：
[GATE-2] 引用: [Author (Year)]
  Zotero中有记录: [是/否]
  论文实际内容: [从摘要提取的一句话]
  文中使用方式: [你的文本中它支持什么主张]
  判定: [一致/不一致/需核实]
不一致或需核实 → 不准使用该引用。
```
### GATE-3: 宪法一致性（任何写作输出前）
```
[GATE-3] 宪法核心命题: [从 §2 逐字复制]
  本段主张: [一句话]
  是否服务核心命题: [是/否]
  是否预设了未确认的发现: [是/否]
如果"否"或"是" → 重写后再输出。
```
### GATE-4: 中英文同步（中英对照输出时）
```
[GATE-4] 英文段落数: [N] 中文段落数: [M]
  逐段对照: [一致/不一致]
不一致 → 不准输出。
```

---

## 螺旋循环路由

```
                      ┌─────────────┐
                      │  研究宪法     │  ← 每次对话的起点和终点
                      └──────┬──────┘
                             │
        ┌────────────────────┼────────────────────┐
        │                    │                    │
        ▼                    ▼                    ▼
  ┌──────────┐       ┌──────────┐        ┌──────────┐
  │ 入口 A:   │       │ 入口 B:   │        │ 入口 C:   │
  │ 模糊兴趣   │       │ 我有数据   │        │ 读了文献   │
  └────┬─────┘       └────┬─────┘        └────┬─────┘
       │                   │                   │
       └───────────────────┼───────────────────┘
                           │
        ┌──────────────────┼──────────────────┐
        │                  │                  │
        ▼                  ▼                  ▼
  ┌──────────┐     ┌──────────┐       ┌──────────┐
  │ 入口 D:   │     │ 入口 E:   │       │ 入口 F:   │
  │ 初步结果   │     │ 写某章节   │       │ 全篇审查   │
  └────┬─────┘     └────┬─────┘       └────┬─────┘
       │                 │                  │
       └─────────────────┼──────────────────┘
                         │
                         ▼
               回到研究宪法（更新状态）
```

---

## 渐进式加载

| 阶段 | 加载 | ~行数 |
|------|------|------|
| 任何对话开始 | SKILL.md + constitution.md | ~200 |
| +入口 A-F | +对应 entries/*.md | ~300 |
| +入口 E (写章节) | +对应 briefs/*.md + section-guide.md | ~500 |
| +需要主题知识 | +对应 themes/*.md | ~600 |
| +需要文献检索 | + corpus/zotero-query.md | ~700 |
| +润色/翻译 | + writing/polish.md → nature-polishing | ~750 |
| +特定期刊 | + journals/<name>.md | ~850 |

---

## 主题加载

| 关键词 | 加载 |
|--------|------|
| 不平等/公平/正义/隔离/绅士化/可达性公平 | `themes/inequality.md` |
| 交通/出行/通勤/可达性/15分钟/微出行/TOD | `themes/mobility.md` |
| 环境/可持续/韧性/热岛/碳排放/气候 | `themes/environment-sustainability.md` |
| 城市韧性/适应/恢复力/灾害 | `themes/urban-resilience.md` |
| 住房/土地/城市更新/绅士化 | `themes/housing.md` |
| 健康/心理健康/生理/主动出行 | `themes/health.md` |

---

## 期刊特调

| 期刊 | 加载 |
|------|------|
| Cities / 投Cities | `journals/cities.md`（106篇论文提取） |

---

## 桥接规则

| 场景 | 桥接到 |
|------|-------|
| 深度英文润色/中译英 | `nature-polishing` |
| 大规模系统文献检索 | `nature-academic-search` |
| 制作期刊图表 | `nature-figure` |
| 格式引用插入 | `nature-citation` |

---

## 文件索引

```
cities-knowledge-graph/
│
├── SKILL.md                     ← 路由 + 硬闸门（你在这里）
├── constitution.md              ← 研究宪法（GATE-1：每次对话必读）
├── objects.md                   ← 研究对象分类学
│
├── entries/                     ← 循环入口
│   ├── vague-interest.md        A: 模糊兴趣 → RQ生成
│   ├── have-data.md             B: 有数据 → 能力匹配
│   ├── have-literature.md       C: 读文献 → 竞品定位
│   ├── have-results.md          D: 有结果 → 反向推导
│   ├── need-section.md          E: 写章节 → 战略简报
│   └── full-audit.md            F: 审查 → 一致性检查
│
├── briefs/                      ← 战略简报（入口E加载）
│   ├── intro-brief.md           → 五段模板 + 强制前置检查
│   ├── lit-review-brief.md
│   ├── results-brief.md
│   ├── discussion-brief.md
│   └── conclusion-brief.md
│
├── themes/                      ← 议题知识库
│   ├── _template.md
│   ├── inequality.md            → 含文献综述写作模式
│   ├── mobility.md              → 含文献综述写作模式 + 方法选择论证
│   ├── environment-sustainability.md
│   ├── urban-resilience.md
│   ├── housing.md
│   └── health.md
│
├── core/                        ← 核心知识
│   ├── logic-chain.md
│   ├── research-question-design.md  → Peters(2025)四阶段法+七检验
│   ├── design-patterns.md
│   ├── experiment-design.md
│   ├── literature-review.md         → 三层文献综述法
│   ├── positioning.md               → 竞品分析框架
│   └── cn-to-intl.md                → 中国叙事→国际议题
│
├── corpus/                      ← 文献库
│   ├── zotero-query.md
│   └── corpus-index.md
│
├── journals/                    ← 期刊风格
│   └── cities.md                → 引言特调 + 文献综述句式 + 北京论文拆解
│
├── writing/                     ← 执行层
│   ├── section-guide.md
│   ├── polish.md
│   └── bridge.md
│
└── examples/
    └── walkthrough.md
```
