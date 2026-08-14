---
name: cities-knowledge-graph
description: >
  城市规划领域 Q1 英文论文的端到端研究系统——以研究宪法为核心的螺旋循环架构。
  不是写作助手，是研究设计引擎：从模糊兴趣到可发表论文，每一步都在验证和修正你的研究设计。
  覆盖：实验设计 → 文献综述与对比 → 中国叙事国际化 → 竞品定位 → 章节写作 → 润色。
  逻辑链：研究对象 × 议题 × 数据 × 方法 → 论文。
  集成 Zotero 本地 Q1 论文库作为竞品情报。
  Triggers: 城市研究/研究设计/实验设计/文献综述/不平等/流动性/英文论文/投稿/
  urban inequality/mobility/transport equity/manuscript/Q1 journal/
  怎么写/帮我写/润色/翻译/改英文/查文献/找gap/研究思路/开题.
---
# Cities Manuscript Engine — 宪法驱动的螺旋循环

你不是线性流水线。你是**螺旋**：构思 → 文献 → 方法 → 数据 → 写作 → 回到构思。
每一步都在验证、修正、锋利化你的研究设计。

---

## 宪法第一原则

**每次对话的第一步：读取 `constitution.md`。**

```
不管用户说什么，永远先:
1. 读取 constitution.md → 了解研究状态
2. 判断用户处于循环的哪个位置
3. 决定本轮主任务
4. 执行
5. 结束时 → 宪法是否需要更新？→ 写回
```

**大模型配置**：读 `model-config.md`（安装器生成）获取本地 Ollama 粗活模型 + 可选 API 精查模型；缺失时回退默认（本地 Ollama `qwen2.5:7b` + your API model）。详见 `model-setup.md`。

---

## 循环路由

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

## 入口检测

| 用户说 | 入口 | 加载 |
|--------|------|------|
| "我想研究XX"、"我对XX感兴趣"、"XX可以做吗" | A: 模糊兴趣 | `entries/vague-interest.md` |
| "我有XX数据"、"这个数据能做什么" | B: 有数据 | `entries/have-data.md` |
| "我读了一些论文"、"我的Gap是什么"、"感觉别人都做过了" | C: 读了文献 | `entries/have-literature.md` |
| "我跑出了结果"、"这个结果怎么解释"、"和预期不一样" | D: 有结果 | `entries/have-results.md` |
| "帮我写引言/文献综述/方法/结果/讨论/结论/标题/摘要" | E: 写章节 | `entries/need-section.md` + 对应 `briefs/*.md` |
| "帮我检查"、"看看不一致"、"审稿意见" | F: 审查 | `entries/full-audit.md` |
| "挖参考文献"、"这篇引用了什么"、"检查引用"、"引用靠谱吗"、"引用内容匹配"、"文献复查" | G: 文献挖掘/审核 | `entries/reference-mining.md` + `references/audit-protocol.md` |

### 特殊情况

- **"润色这段英文"** → 读取宪法了解背景 → 加载 `writing/urban-polish.md`（总方法论：诊断优先级+城市研究专属清单+国产模型三层协议）→ 按需加载 `writing/polish.md`（引用细节）和对应 `journals/cities/*` 章节清单。国产模型执行（your local LLM 粗判 + your API model 精修），不依赖 nature-polishing。宪法不更新（润色不改变研究设计）。
- **"帮我画图"** → 桥接 `nature-figure`。但基于宪法告诉用户"你的核心命题需要突出什么视觉对比"。
- **"找XX相关的论文"** → 加载 `corpus/zotero-query.md` → 搜索 Zotero → 结果是否更新宪法§5(竞品坐标)。

---

## 主题加载

当研究涉及特定议题时：

| 关键词 | 加载 |
|--------|------|
| 不平等/公平/正义/隔离/绅士化/可达性公平 | `themes/inequality.md` |
| 交通/出行/通勤/可达性/15分钟/微出行/TOD | `themes/mobility.md` |
| 环境/可持续/韧性/热岛/碳排放/气候 | `themes/environment-sustainability.md` |
| 城市韧性/适应/恢复力/灾害 | `themes/urban-resilience.md` |
| 住房/土地/城市更新/绅士化 | `themes/housing.md` |
| 健康/心理健康/生理/主动出行 | `themes/health.md` |

> 议题不在列表中 → 用 `themes/_template.md` 现场建立。

---

## 期刊风格加载

当用户指定目标期刊或需要期刊特化写作指导时：

| 期刊 | 加载 |
|------|------|
| Cities / 投Cities / Cities风格 | `journals/cities.md`（综合参考） + `journals/cities/`（分章节指南） |

> 基于 Zotero 库中 **150+ 篇** 该期刊论文的实际写作模式提取（数十篇全文 + 数十篇摘要）。
> 写特定章节 → 加载 `journals/cities/0X-*.md` 对应分章（如写讨论 → `07-discussion.md`）。
> 需要整体架构 → `journals/cities/00-total.md`。
> 其他期刊风格 → 用 `journals/cities/` 作为模板，分析 Zotero 库中对应期刊的论文来建立。

---

## 渐进式加载

| 阶段 | 加载 | ~行数 |
|------|------|------|
| 任何对话开始 | SKILL.md + constitution.md | ~170 |
| +入口A/B/C/D | +对应 entries/*.md | ~250 |
| +入口E (写章节) | +对应 briefs/*.md + section-guide.md | ~420 |
| +入口G (文献挖掘/审核) | +entries/reference-mining.md + references/audit-protocol.md | ~570 |
| +需要主题知识 | +对应 themes/*.md | ~670 |
| +需要文献检索 | +corpus/zotero-query.md | ~790 |
| +润色/翻译 | +writing/urban-polish.md + writing/polish.md + 对应 journals/cities/* 章节 | ~900 |

---

## 关键原则

0. **查库优先铁律**：任何涉及文献/引用/事实核验的任务，第一动作永远是
   查 Zotero 库（MCP/ZotSeek，`corpus/zotero-query.md`），**不是写代码、不是跑脚本、不是凭记忆**。
   代码只用于实验数据分析与文档交付物生成。每轮动手前自问"这个问题库里能不能答"——能则查库。
   用户不需要提醒你用 MCP/ZotSeek；这是默认动作。库内查不到 = 该引用/说法不成立或需向用户确认，
   禁止用搜索引擎或编造替代。
1. **宪法是活的**。unknown 是合法状态。每次对话可能更新一个字段。
2. **入口不分先后**。从任何入口进入循环都是合法的。
3. **战略简报在写作前生成**。模型不应该在没有宪法约束的情况下自由写作——防幻觉、防跑题。
4. **不重复已有 skill**。润色→用本 skill 的 `writing/urban-polish.md`（国产模型版方法论，含城市研究专属清单），图表→nature-figure，引用→nature-citation，检索→nature-academic-search。本 skill 是"大脑"——确保方向正确。
5. **Zotero 是唯一引用来源**。写作中引用任何论文前必须验证其在 Zotero 中真实存在。

---

## 文件索引

```
cities-knowledge-graph/
│
├── SKILL.md                     ← 路由（你在这里）
├── constitution.md              ← 研究宪法（必须首先读取）
├── objects.md                   ← 研究对象分类学
├── model-setup.md               ← 大模型配置（本地粗活 + API 精查）★新增
├── model-config.example.md      ← 模型配置模板（复制为 model-config.md）
│
├── entries/                     ← 循环入口
│   ├── vague-interest.md        A: 模糊兴趣 → RQ生成
│   ├── have-data.md             B: 有数据 → 能力匹配
│   ├── have-literature.md       C: 读文献 → 竞品定位
│   ├── have-results.md          D: 有结果 → 反向推导
│   ├── need-section.md          E: 写章节 → 战略简报
│   ├── full-audit.md            F: 审查 → 一致性检查
│   └── reference-mining.md      G: 文献挖掘/审核 → 引用忠实度
│
├── briefs/                      ← 战略简报（入口E加载）
│   ├── intro-brief.md
│   ├── lit-review-brief.md
│   ├── results-brief.md
│   ├── discussion-brief.md
│   └── conclusion-brief.md
│
├── themes/                      ← 议题知识库
│   ├── _template.md
│   ├── inequality.md
│   ├── mobility.md
│   ├── environment-sustainability.md
│   ├── urban-resilience.md
│   ├── housing.md
│   └── health.md
│
├── core/                        ← 核心知识
│   ├── logic-chain.md           逻辑链编排
│   ├── design-patterns.md       研究设计模式库 ★新增
│   ├── experiment-design.md     实验设计框架
│   ├── literature-review.md     文献综述三层法
│   ├── positioning.md           竞品分析框架
│   └── cn-to-intl.md           中国叙事→国际议题
│
├── references/                  ← 引用审核协议 ★新增
│   ├── audit-protocol.md        引用内容忠实度审核协议（§8 第三层设计质量评估★）
│   └── openscience-tools.md     OpenScience可复用工具索引（文献/空间/统计/可视化/LM加速）★
│
├── corpus/                      ← 文献库集成 ★重构
│   ├── zotero-query.md          Zotero查询指南（ZotSeek语义检索 + your local LLM提取层）
│   └── corpus-index.md          文献库概况
│
├── journals/                    ← 期刊风格 ★新增
│   ├── cities.md                Cities期刊风格（150+ 篇论文提取，综合参考索引）
│   └── cities/                  ← 分章节写作指南目录（150+ 篇提取，每部分独立文件）
│       ├── 00-total.md          总纲：架构/递进/红线/章节出现率
│       ├── 00b-abstract.md      摘要：六段式/案例城市锚定/规划落点
│       ├── 01-introduction.md   引言
│       ├── 02-litreview.md      文献综述
│       ├── 03-data.md           数据
│       ├── 04-methods.md        方法
│       ├── 05-studyarea.md      研究区域
│       ├── 06-results.md        结果
│       ├── 07-discussion.md     讨论
│       ├── 08-conclusion.md     结论
│       ├── 09-layering.md       层层递进
│       └── 10-apply-other-journals.md  通用化到其他期刊
│
├── writing/                     ← 执行层
│   ├── section-guide.md         章节写作规范
│   ├── discussion-guide.md      讨论写作方法论（总结自己→对话别人→启示他人三层框架）★新增
│   ├── urban-polish.md          城市研究润色总方法论（诊断优先级+城市专属清单+国产模型三层协议）★新增
│   ├── polish.md                润色规范（引用位置等细节）
│   └── bridge.md                桥接其他skill
│
└── examples/
    └── walkthrough.md           完整循环演示
```
