# Cities 结果节写作指南（真实语料版）

> **数据基础**：Zotero 库内真实 Cities 论文"结果 Results"节精提取 数十篇（cities_section_lib/sec_F.md，对应 cities_ds_parse/ 逐篇精提取）。全部例句逐字摘录自原文，可回库核实。
> **[DATE] 重写原则（改写说明，推翻 v1 的模板化写法）**：
> 1. 写作逻辑只能从 Zotero 库真实 Cities 论文提炼；**你自己的论文是被指导对象，不是语料来源**。
> 2. 不是罗列"多少篇/百分比/多少条句式"，而是提炼"结果节按什么顺序写""每个数字怎么报""解释什么时候出现"等真正有用的写作判断，配中英例子，让英文不好的模型照骨架写出合格英文。
> **v1 遗留问题（已修正）**：①v1 把"空间格局开场→群体对比→空间统计→城市解释"写成万能范式——实测结果节的内部组织由**研究问题的推进逻辑**决定，"空间格局开场"只是其中一类论文的开场，不是签名；②v1 部分句子无出处，现在每条都有真实论文 tag；③v1 缺"聚类/分组结果怎么呈现""差异检验怎么报""表图如何呼应"三条指导——正是你的稿件（K-means 你的分组 + 组间比较）最需要的。

---

## 〇、这一章的"工作"是什么

读者（审稿人）读完结果节，要能回答三个问题：
1. **发现了什么**（每条发现 = 数字 + 方向 + 参照，不是"我们做了回归"这类程序句）；
2. **每个发现对应哪个研究问题**（结果顺序与研究方法/研究问题一一对应，读者能对着 RQ 逐条核对）；
3. **数字和方向是否清楚**（组间谁高谁低、差异多大、是否显著、证据在哪张表/哪个图）。

**判断标准**：结果节不是"分析过程的流水账"（跑了什么模型、表在附录），而是一组**发现**——每个小节回答一个子问题，每条句子报告一个数字或一个方向。本指南只管 Results（发现什么/顺序怎么排/数字怎么报/解释何时出现）；"怎么分析"归 [04-methods.md](04-methods.md)，"为什么是这样"归 [07-discussion.md](07-discussion.md)。

---

## 一、真实论文怎么组织：先判断推进逻辑

数十篇实测：结果节的内部组织**由研究问题的推进逻辑决定**，常见五种主线：

| 组织主线 | 递进逻辑 | 代表论文 |
|---|---|---|
| **描述统计→主发现→异质性/机制** | 先"是什么"再"为什么"，层层收窄 | 2022_Gao_7829、2023_Shi_7664、2026_Ding_7711、2026_Fan_8053、Ta2021 |
| **按方法步骤/分析链** | 方法定义了"先看什么后看什么"，结果严格镜像方法 | 2023_Liu_8071、2023_Shi_7664、2026_Zhuang_8043、2024_Chen_5974 |
| **按研究问题/假设** | 每节回答一个 RQ；每假设一节并给出 accepted/rejected | 2021_Lu_5979、DongMiller2026 |
| **按变量类别** | 个人属性→建成环境→社会环境，逐类报告系数 | 2022_Zhang_7714 |
| **按空间尺度/分析层次** | 行政区→人群→功能区（整体到局部） | Xiao2020、2025_Zhou_8137 |

### 1.1 描述统计 → 主发现 → 异质性/机制（你的稿件主线，重点）

最常见也最贴合你的结果链（样本 → 多指标 → K-means 分组 → 组间比较）的递进：

- **2023_Shi_7664（深圳）**：四层递进，严格对应方法——4.1 社会区结构（描述统计层：PCA→5 类社会区）→ 4.2 全市通勤移动性（制图层：3 类移动性聚类）→ 4.3 关系检验（统计层：目视叠加→ANOVA→ANCOVA→回归）。每层换一个"看世界的粒度"，从"长什么样"到"是否显著相关"。
- **2026_Ding_7711**："格局描述 → 空间因素模型 → 社会因素机制"；4.2 与 4.3 之间形成"定量模型给骨架、定性访谈给血肉"的互证。
- **2026_Fan_8053**："先呈现差异现象 → 再证明模型可靠 → 最后归因机制"，5.3 内部再按"全局→局部→跨群体"层层深入。
- **2020_Wang_8696**："4.1 描述统计（只描述不解释）→ 4.2 差异（先个体层面、再社区层面，核心反转出现在社区层面）→ 4.3 回归模型（Model 1 只放收入 → Model 2 加控制）"——每层回答"差异是否存在→差异在哪→差异由什么解释"。

**给你的稿件的直接对应**：结果链建议按"4.1 你的分组的描述统计与命名（谁是谁、各占多少）→ 4.2 组间差异检验（指标×分组，t 检验/ANOVA + post hoc）→ 4.3 空间分布（各类人群在案例城市的空间落位，配地图）"组织——这就是 2023_Shi_7664 在深圳验证过的"结构→变化→解释变量"结构。

### 1.2 按研究问题/假设组织

- **2021_Lu_5979**：三小节与研究问题一一对应——4.1 描述统计（先证明"三组有差异"）→ 4.2 模型结果（证明"行为变量有效、哪些变量关键"）→ 4.3 分群体比较（证明"各组如何被识别"）。
- **DongMiller2026**：总述（描述统计+模型+三假设安排）→ 逐假设检验（H1→H2→H3）→ 跨年补充发现；每假设小节结构固定：假设动机重述 → 描述统计（Fig.1/2）→ 模型系数解读（Tables 2–3）→ 系数线性组合假设检验（Tables 4–5）→ 明确 "Hence, Hypothesis 1 is accepted for shopping trip making, but rejected for leisure/personal business trip making."
- 适合假设驱动论文；结论句用 accept/reject 字样，读者可逐条核对。

### 1.3 按方法链/分析步骤组织（结果-方法呼应的三种真实做法）

结果顺序**镜像方法步骤**是 数十篇最常见的呼应方式：
- **2023_Liu_8071**：结果按方法链顺序组织 5 小节，呈现"点→网→点→边→团"的空间尺度递进（4.1 方法有效性+活动空间分布 → 4.2 网络宏观特征 → 4.3 节点重要性 → 4.4 空间交互层级 → 4.5 社区组织）。
- **2026_Zhuang_8043**：三小节与 Method 的三个产出严格对应（5.1 识别与验证 → 5.2 宏观格局 → 5.3 微观活力）。
- **2017_Tan_6973**：结果与方法三层镜像（4.1 聚合层读图 → 4.2 个体层读表 → 4.3 SEM 因果层）。

**开篇总览 + 小节映射**（先告诉读者结果节怎么走，再逐节走）：
- **Gao2025**："First, <step1> (Sect. 4.1). Second, <step2> (Sect. 4.2). Third, <step3> (Sect. 4.3). In the final step, <step4> (Sect. 4.4)."
- **2024_Aguilera-García_3062**："First, we examine ... In Section 6.2 we briefly present ... Finally, Section 6.3 addresses ..."
- **2026_Li_8809**：每小节以"目的句"开头说明该节回答什么，结尾用"过渡句"预告下一节。

### 1.4 小节主题句与小结句（导师批注的核心教训，结果节同样适用）

- **Palm2025**：每个子节先给"一句主发现"（主题句），再给关键系数解释，次要系数一笔带过——"每个子节先给'一句主发现'（主题句），再给关键系数解释"。
- **Tao2020**：每条发现都遵循"主题句→数字→机制解释（this indicates/reflects/suggests）"的闭环。
- **2026_Wang_8274**：每小节末尾都有 "Overall/In summary" 小结句，并预告下一节分析方向。
- **Xiao2020**：小节内部用 First/Second/Third 编号组织并列发现："A comparison of the job-housing OD in four functional areas in Shanghai yields the following findings. First, ... Second, ..."
- **Zheng2026**：每小节统一"图给基线→表给对比→文字总结规律"，节末总结句："Overall, longer working hours significantly restrains people's travel behavior, leading to a reduction in travel frequency and a contraction in the scope of activities."

### 1.5 无独立 Results 节（结果并入其他节的真实做法）

- **2021_Choi_7991**：无独立 Results 节，结果合并在 3.3 Comparison，采用"四步递进"：①非工作活动时间（两组几乎相同，t 检验不显著，排除替代解释）→ ②每活动旅行时间 → ③每 10 分钟活动旅行时间（标准化）→ ④汇总节约比例（Table 9 的 Diff ratio）。呈现方式"每步一句描述统计 + 一句 t 检验结论 + 表格编号"，无回归表。
- **2021_Poku-Boansi_7965**：标题直接叫 "Findings and discussion"，描述统计为主线，每小节"表格呈现 → 数字解读 → 与文献对照 → 访谈引语佐证"。
- 判断：只有"发现链很短、每步一个检验"的论文才适合并入其他节；你的稿件（多指标+聚类+组间比较）需要独立 Results 节。

---

## 二、段落级写法（逐段功能 + 三条横切纪律）

### 2.1 结果节内部段落功能表

| 段落 | 功能 | 常见内容 | 真实例证 |
|---|---|---|---|
| **第 1 段：总起/总览** | 交代结果节怎么走（总览映射小节），或先给样本规模 | First/Second 映射、识别人数与占比 | Gao2025、Zheng2026、2024_Zhang_7449 |
| **第 2 段：描述统计** | 先证明"分组有差异/对象有分布"，只描述不解释 | 均值±标准差、占比、组间差异显著性 | 2016_Wang_8603、2021_Lu_5979、2022_Gao_7829 |
| **第 3 段：主发现（按 RQ/方法链展开）** | 逐条回答研究问题，数字+方向+参照 | 差异检验、回归系数、聚类特征 | 2023_Shi_7664、2026_Ding_7711、2018_Davidson_6227 |
| **第 4 段：异质性/机制层** | 从总体到分组（分性别/分区/分群体），或从模型到解释 | 分组模型、交互项、SHAP/重要性、机制解释 | 2026_Fan_8053、2016_Tammaru_8475、2024_Chen_5974 |
| **末段：稳健性/口径** | 内嵌式完成：表注、模型对比、敏感性 | "As a robustness check..."、AIC/BIC 对比、附图 | 2026_Lee_7708、2022_Li_7394、AllenFarber2020 |

### 2.2 数字怎么报：方向 + 数值 + 参照（三个要素缺一不可）

真实论文的每个统计句都同时给出**方向**（higher/lower/increase/decrease）、**数值**（具体到小数）和**参照**（compared to / than / vs. / respectively）：
- `In general, the low-income group has a significantly lower level of facility accessibility.`（2020_Wang_8696：方向 lower + 参照 the low-income group，数值在表里）
- `On weekdays, residents living in market housing and institutional housing exhibit significantly higher extensity than those who live in resettlement housing and affordable housing.`（2019_Zhang_7717）
- `Specifically, we calculated the average commuting distances of groups aged 25–34, 45–54, and 55–64 as 12.31 km, 11.41 km, and 11.10 km, respectively.`（2024_Chen_5974：成串报告，respectively 收尾）
- `The average diversity of working population is 0.57 (with a standard deviation of 0.42), whereas the average diversity of residential population is 0.56, (with a standard deviation of 0.44).`（2024_Zhang_7449：均值+标准差并列，whereas 对比）
- `Residential-based LMI ranges from 0.016 to 0.870, with a mean of 0.277, mostly concentrated between 0.217 and 0.328. By ring zones, the mean values are 0.333, 0.277, and 0.254 from inner to outer areas.`（2026_Wang_8274：范围→均值→分带）

**骨架**：`<组A> exhibit significantly <方向> <指标> than <组B>.` / `<指标> of <组A> is <值> (SD <值>), whereas <指标> of <组B> is <值>.` / `The average <指标> of <组A>, <组B>, <组C> are <值>, <值>, and <值>, respectively.`

### 2.3 表图编号与正文呼应（三种真实手法）

**① 表/图引导动词 + 内容概括**（"Table/Fig. N shows/presents/summarizes + 这张表讲什么"，随后正文解读）：
- `Table 3 compares the basic profiles of respondents living in public and private housing.`（2016_Wang_8603）
- `Table 2 presents seven macroscopic characteristic parameters for the eight UTNs, including the number of nodes (N), edges (E), average degree (AD), average weighted degree (AWD), ND, C, and AL.`（2023_Liu_8071）
- `Fig. 1 shows the geographical distribution of respondents living in public and private housing and their daily activities in densities.`（2016_Wang_8603）

**② 图表作为证据主体，编号前置**（"The patterns in Fig. X indicate..."，不是"见图 X"式弱引用）：
- `The patterns in Fig. 4 indicate that the activity intensity of the Han participants is generally higher than that of the Hui participants both on the weekday and weekend.`（2017_Tan_6973）
- `These two figures indicate that the residents of market housing exhibit the most dispersed activity space on weekdays of all the groups.`（2019_Zhang_7717）

**③ 跨表/表图交叉引用**（不同证据互证，或图是表的再表达）：
- `Echoing this finding, the survey data show that people living in the inner core have shorter average commuting distance and time than people living in the suburbs (see Table 6).`（2017__6166）
- `Fig. 3 illustrates these findings by translating the coefficients from Table 4 into estimated percentage reductions per additional crossing.`（2026_Won_8833：图与表联动引用，图是对表的再表达）
- `The scatterplot R2 values reflect the strength of this relationship and are consistent with the Global Moran's I results reported earlier in Table 5.`（2026_Chamberlain_8947）
- 结果与前期分析回扣：`These findings are consistent with those of the geovisualization analysis.`（2019_Zhang_7717）

### 2.4 结果节不解释：解释的四种受控形态（真实表现）

数十篇里结果节**并非零解释**，而是解释以受控形态出现，读者能分清"这是结果"与"这是解释"：

1. **数据机制解释，一句带过**（紧贴自己的数据，不展开论证）：
   - `The intensity of out-of-home activity spaces is significantly higher among public housing residents: they spend over half an hour more than private housing residents out of the home. However, that difference is almost completely driven by longer working hours.`（2016_Wang_8603）
   - `Moreover, commute time does not significantly impact commute satisfaction. One potential reason is the short commute times in our research area—12.3 min per one commute trip for women in our sample—which are unlikely to negatively impact commute satisfaction.`（2022_Hu_7955）
2. **用 suggesting/indicating/implies 动词转译统计结果**（方向性含义，不引文献论证）：
   - `In particular, bus stop density was negatively related to CI, suggesting that increasing the density of bus stops in a zone would decrease activity disparity between the two groups.`（2022_Gao_7829）
   - `Even after accounting for network distance (β = −0.289, p < .001), the coefficients for road barriers remain negative and statistically significant. This persistence suggests that road infrastructure suppresses park usage through factors beyond the physical increase in travel distance.`（2026_Won_8833）
   - `Although there are no differences in the number of activities conducted around the neighborhood for all three groups, migrants conduct fewer activities in the city center when compared to local residents (Model 4). This may be due to the low mobility and high space-time constraints of migrants.`（Ta2021："This may be due to" 标记为推测）
3. **单设解释小节，标题明示**（不与纯结果混排）：
   - 2017_Tan_6973 的 "4.4 Discussion on the results"、2021_Poku-Boansi_7965 的 "4. Findings and discussion"。
4. **反直觉发现配候选机制清单**（给 First/Second/Third 编号理由，仍不引文献）：
   - `This result – which might seem surprising, since Lindängen is served by more bus lines than Bunkeflostrand (see Figures 1 and 2) – is due to different factors: the low frequency of many of the routes serving Lindängen, their long routes and their less efficient connection to major transport hubs (e.g. Hyllie).`（Vitrano2023）
   - `In the case of Guangzhou, several reasons could be advanced to account for this apparent inconsistency. First, … Second, … Third, … Finally, …`（2017__6166）

**红线**：完整理论论证、与文献对话、政策含义 → 讨论节。结果节出现"这是为什么"的展开段 = 越界（见第四节陷阱 1）。

---

## 三、句式与例子（真实提取，按用途取用，附出处）

### 3.1 表格引用句式（你的重点：组间比较表必引）

- `Table <N> compares <对象> in terms of <变量>.`（2016_Wang_8603："Table 3 compares the basic profiles of respondents living in public and private housing."）
- `Table <N> presents <内容>.`（2023_Liu_8071；2026_Fan_8053："Table 5 presents the Global Moran's I values of travel destinations for various population groups."）
- `The results are shown in Table <N>.` / `The results are presented in <第几列> of Table <N>.`（2016_Wang_8603；2024_Aguilera-García_3062："The modeling results for the adoption and frequency of use of shared e-scooters are presented in the first and second numeric columns of Table 7, respectively."）
- `The results of <分析> are presented in Table <N>.`（2017_Tan_6973："The results of descriptive statistical analysis are presented in Table 3."）
- `Table <N> summarizes <内容>.`（2021_Cao_8109："Table 3 summarizes the results for the statistical properties of these nine networks."；2024_Sun_7832："Table 4.1 summarizes the overall segregation trends of various activity types per household income level."）
- `The regression results are detailed in Table <N>.`（2026_Lee_7708）
- `We include all regression model results in Table <N> and summarize the main findings below.`（Kim2024：全表先行，正文只讲要点）
- `Table <N> shows that <结果+显著性+含义>.`（2024_Zhang_7449："Table 2 shows that there is a negative relationship between the mean LQ value and the population size for both working and residential population groups at a significance level of 0.05, suggesting that the increase in population size can reduce certain migrant groups' level of urban segregation."——表引用一句到底：结果+显著性+含义）
- 中文说明：表引三要素=引导动词（shows/presents/summarizes/displays）+表内容概括+随后正文解读；不要孤立地写 "(Table 1)" 不说明表里有什么。

### 3.2 图引用句式（你的重点：地图必引）

- `Fig. <N> shows <内容>.`（2016_Wang_8603；2025_Zhou_8137："Fig. 5 shows the spatial distribution results of overtime workers. It can be seen that overtime workers were mainly concentrated in the core economic zones of Beijing, including the Central Business District (CBD), Sanlitun, Jinrongjie, Zhongguancun, Xi'erqi, Wangjing, Yizhuang and Fengtai Park (Fig. 5a)."——图引后紧跟 It can be seen that 解读）
- `As shown in Fig. <N>, <发现>.`（2025_Zhou_8137："As shown in Fig. 3, TAZs with higher hyperedge counts are mostly concentrated downtown, indicating that central TAZs tend to connect closely with many other TAZs."）
- `As illustrated in Fig. <N>, <位置1> exhibited <结果1>, while <位置2> exhibited <结果2>.`（2022_Gao_7829："As illustrated in Fig. 4, TAZs in urban centres and sub-centres exhibited small activity disparities (blue colour), while those in the outskirts exhibited great activity disparities (red colour), particularly in the northwest and northeast areas of the city."）
- `Fig. <N> depicts <内容>, which presents <格局>.`（2022_Gao_7829："Fig. 6 depicts the spatial distribution of the four clusters, which presents a clear core-periphery pattern."）
- `The patterns in Fig. <N> indicate that <组A> is generally <比较词> than <组B>.`（2017_Tan_6973）
- `As Fig. <N> indicates/shows/displays, <人群> are particularly clustered in <地点A>, <地点B>, and <地点C>.`（Xiao2020："As Fig. 6 indicates, people with "955" work schedule are particularly clustered in Baoshan District, Jinshan Industrial District, and Lingang District."）
- `Fig. <N><子图> indicates that <结果>, with <关键数值>.`（2026_Fan_8053："Fig. 4a indicates that the overall travel distance of residents exhibits a clear right-skewed long-tailed distribution, with 71% of trips occurring within 5 km."）
- 中文说明：地图引用的标配=图号+位置词（concentrated in / clustered in / mainly located in）+地点清单；图不孤悬，引用后必跟一句解读。

### 3.3 差异检验句式（你的重点：组间比较差异检验）

**t 检验 / 组间均值比较**：
- `T-statistics was employed to test the significance of differences in means between the two groups, and all differences were statistically significant at the 0.01 level.`（2022_Gao_7829）
- `Based upon group mean comparison (t-test), <组1>'s <指标> for <对象> are significantly less than for <组2> (Table <N>).`（2021_Choi_7991）
- `Conducting <检验> confirmed that <指标> is significantly <方向> in <组1> than in <组2> (at the p < 0.05 level), suggesting that <解释>.`（2023_Tao_5710）
- `In <年份>, the observed averages of the <N> measures were significantly smaller among <组A> than <组B> and <组C> at the p < .05 and p < .01 levels respectively (Table <N>).`（Tao2020）

**非参数检验（Mann-Whitney U / K-S / Kruskal-Wallis）**：
- `Fig. <N> presented significant evidence of disparities between <组A> and <组B> by the <检验名>, supporting the research hypothesis that <假设>.`（2024_Chen_5974："...by the Mann-Whitney U test, which considers the situation where there is complete separation of the groups, supporting the research hypothesis that the two groups are not equal."）
- `The comparison of <分布> further revealed significant <对象> differences between <组A> and <组B> (Fig. <N>, K-S test, p = <值>).`（2026_Zhuang_8043："...K-S test, p = 0.02"）
- `Supplementary Tables <编号> present the results of the <检验>, which indicate significant differentiation (p < 0.001) among <分组> for all examined attributes.`（2026_He_8940：Kruskal-Wallis H test）

**ANOVA + post hoc**：
- `From the <检验名> post hoc test in Table <N>, <组A> have a significantly <方向> <指标> (<数值>) compared with <组B>, but not significantly different with <组C>.`（2023_Shi_7664："From the Games–Howell post hoc test in Table 5, new local neighborhoods have a significantly smaller compactness (0.19) compared with family migrants, young residents in urban villages, and rural migrant concentrated areas, but not significantly different with old local neighborhood."）
- `Significant differences exist in <N> <指标> between <组A> and <组B>. <组A> have <结果1>, <结果2>, and <结果3>.`（2023_Shi_7664："Residents living in central areas have smaller compactness, larger travel space, and shorter travel distance."）
- `Table <N> summarizes the P-values of interaction terms. ... Therefore, <模型> should be made separately for each <分组>.`（2023_Shi_7664）

**差异总括句**（组间比较的第一句，说明"差异确实存在"）：
- `The two groups are systematically different in many aspects, and most of the differences are statistically significant.`（2016_Wang_8603）
- `The three groups were found to be different in many aspects, and most of the differences were statistically significant.`（2021_Lu_5979）
- `As shown in Table <N>, <组A>, <组B> and <组C> differ in terms of <维度列表>.`（Ta2021："...differ in terms of the extensity, intensity, diversity and exclusivity of their activity spaces."）

### 3.4 回归/模型结果句式（系数、OR/IRR、显著性、不显著）

**系数 + 显著性 + 方向**：
- `Among the influencing factors, <变量> showed a significant <方向> association (<β***>) with <因变量>, indicating <解释>.`（2023_Qiao_5967："...0.541***..."）
- `Specifically, greater use of <变量A> (β = <值>, p < <阈值>) was positively associated with <结果>, whereas more frequent use of <变量B> was negatively associated (β = <值>, p < <阈值>).`（2026_Lee_7708：β = 0.018, p < 0.001 / β = −0.021, p < 0.01）
- `For Model <N>, in which only <因子> was adopted, <A> presented a significantly <方向> association with <结果> at the confidence level of p = <值>, whereas the influence of <B> was nonsignificant (p = <值>).`（2022_Li_7394："...p = 0.001... nonsignificant (p = 0.802)"）
- `The association between <X> and <Y> weakens but remains statistically significant once we include <控制变量> into <模型>.`（2016_Tammaru_8475）
- `When controlling for <控制变量>, <组A> have <数值> <方向> <结果> than <组B>.`（2016_Wang_8603：1.7 percentage points fewer / 2.3 percentage points fewer / 0.5 percentage point more / 8.3 percentage points more）
- `Based on the standardized regression coefficients, <变量A> has the strongest effect on <对象>, followed by <变量B, C>. In contrast, <变量D, E> exhibit weaker influences.`（2026_Ding_7711）
- `The regression results passed the <显著性> significance level and multicollinearity tests, with an R2 of <值>, indicating that <因素> explain <比例> of the variation in <因变量>.`（2026_Ding_7711："R2 of 0.464... explain 46.4%"）

**OR / IRR / 倍数（logit/计数模型）**：
- `The odds that <组A> <行为> were only <x%> as high as the odds for <参照组>.`（2014_VanHolm_7957："...only 71% and 30% as high as the odds for someone from the creative class respectively."）
- `Specifically, the odds ratio for <组> in the <模型> is <0.xx>, meaning they are <p>% less likely than <参照> to <结果>. Odds ratios below one indicate a negative association.`（Palm2025："...0.668, meaning they are 33.2 % less likely..."）
- `The estimated effects showed <组> had <方向> odds of <结果> compared to <参照组>, although the CI for <子组> included the null (OR = <值>, 95 % CI: <区间>).`（2023_Oostenbach_7984："OR = 0.65, 95 % CI: 0.41, 1.03"——CI 含 1 也如实报告）
- `For example, those <情境> were estimated to have an increased OR of <值> for <结果>, i.e., an <百分比> increase in odds.`（2023_Oostenbach_7984：OR 1.08 → 8%）
- `Our model suggests that <群体>'s <因变量> score is <倍率> times higher than <参照组>.`（Kim2024：1.14 / 1.16 / 1.06 / 1.43）
- `Every <单位> increase in <连续变量> is associated with increasing <因变量> by <倍率> times.`（Kim2024："every 10-minute increase in average trip length is associated with increasing time crunch by 1.006 times"）

**不显著结果的规范性报告**（不回避，单独成句或列清单）：
- `However, <变量1>, <变量2> have no impact on <因变量>.`（Ta2021）
- `The variables that did not have significant associations with <因变量> were <清单>.`（Kim2024）
- `As shown in Table <N>, <变量列表> do not have statistically significant effects, suggesting that <群体> exhibit <结果词> preferences regarding <对象>.`（2026_Ding_7711）
- `There are no significant differences between <组> who live in <社区1> and <社区2>.`（2020_Wang_8696）
- `In weekends, there are no significant differences in <指标> among residents of the four groups.`（2019_Zhang_7717）

**模型对比/稳健性**（内嵌式，不单设小节）：
- `The SEM model exhibited the best fit, with the lowest AIC (= <值>) and BIC (= <值>), followed by <模型B> and <模型C>.`（2026_Lee_7708）
- 表注稳健性：`Note: As a robustness check, we additionally included <变量>. The results remained consistent in terms of directionality, suggesting that <结论不受干扰>.`（2026_Lee_7708）
- `Even after accounting for <协变量> (β = <值>, p < .001), the coefficients for <自变量> remain <方向> and statistically significant. This persistence suggests that <解释>.`（2026_Won_8833）

### 3.5 聚类/分组结果句式（你的重点：K-means 你的分组直接对应）

**k 选择/类数确定**（方法输出也要在结果里报告依据）：
- `When clustering on <变量>, the 'elbow' is located somewhere between <A> and <B> clusters. We chose <K> clusters for the k-means analysis, because the change in the sum of squared errors appears to level off after this point.`（2018_Davidson_6227）
- `Fig. <N> shows values for the Elbow method and Silhouette score with respect to number of clusters.`（2023_Lu_8074）
- `The findings indicate that the <K>-class model, which has the lowest <准则>, exhibits a reasonable latent classification and stability in parameter estimation. Consequently, the <K>-class <模型> is selected as the final model.`（2026_Guo_8821：AIC）

**类命名**（名字 + 依据，依据要可核对）：
- `Cluster <X>, accounting for <share> of the total <N> units, is referred to as <name> since <justification>.`（2014_Wu_6549："Cluster I, accounting for 17.24% of the total 244 community areas, is referred to as a high-status cluster since the residents in this cluster have the most institutional power, wealth, and authority in general."）
- `After running a cluster analysis, <K> clusters were created to best depict the <特征> of the study area (Fig. <N>).`（2014_Wu_6549）
- 基于因子的命名：`Based on <因子>, <K> types of <对象> are identified (Fig. <N>). <类型1> is positively related to <因子A> and <因子B>, but negatively related to <因子C>, and considered as <命名>. They are located mainly in <区域>.`（2023_Shi_7664 骨架）

**各类特征描述**（用极值/对比把类与类区分开）：
- `Table <N> shows the classification result of <对象>. Among these <K> groups, the '<组名>' group has the <最值> <指标1> and the highest <指标2>.`（Zheng2026 骨架）
- `It can be seen that the '<组名>' group has the earliest average <指标A>, the latest <指标B>, and the lowest <指标C>.`（Zheng2026 骨架）
- `Among them, <组名> group shows the most significant difference in <指标>, with <具体差值>.`（Zheng2026："Among them, 20–29 male group shows the most significant difference in commuting, with an average commuting distance being 2.95 km shorter."）
- `In terms of <维度>, <类A> exhibits higher <指标> than <类B>, indicating <解读>, followed by <排序>.`（2023_Liu_8071）
- `<类A> has the shortest <指标> (<数值>), while <类B> has the longest (<数值>), suggesting that <机制解释>.`（2023_Liu_8071）
- `This cluster exhibits, on average, <起点特征>, commuting to areas with <终点特征>.`（2018_Davidson_6227 骨架）

**规模/占比**（每类多少人、占多少，先立"类存在"）：
- `Based on the above methodology, <N> <对象> out of <M> <总体> are identified in the study region with an average <指标> of <值>. The majority (<比例>) have <指标> primarily concentrated in the <区间> range.`（Zheng2026："1,436,963 overtime workers out of 2,374,411 employees... average weekly working hours of 50.4... 63.78 %... 41–50 h range."）
- `The number of <对象> with <条件> is <N>, accounting for <比例>.`（Zheng2026："The number of people who go to work before 8:00 in the morning is 326,995, accounting for 22.76 %..."）
- `Among the <规模> <群体> in <城市>, <人数> engage in <行为>, representing <比例> of the total.`（2026_Liu_8807）

**组间比较**（"whereas/while/in contrast" 对比，你的组间比较核心句）：
- `<组A> have <比较级> <结果> than <组B> according to <测量> (Model <N>). This is consistent with the findings of <文献> that <机制>.`（Ta2021："Rural migrants have smaller activity spaces than local residents... consistent with the findings of existing studies of urban enclaves..."）
- `Family migrants and old local neighborhoods have higher work mobility if they live in central areas, whereas new local neighborhoods have the opposite pattern. The central/suburban difference in work mobility is not found for young residents in urban villages.`（2023_Shi_7664：分群体方向性结论+零发现并列）
- `<组A> is more <形容词> than <组B> is (with coefficients of <数值A> vs. <数值B>, respectively).`（2026_Liu_8807："The low-mobility group is more dependent on non-ubiquitous functions than the high-mobility group is (with coefficients of 0.142 vs. 0.083, respectively)."）
- `It can be observed that in all <分组>, groups with <条件> exhibit <对比结果1>, <对比结果2>, and <对比结果3>.`（Zheng2026："...groups with longer work hours exhibit earlier start work times, later off-duty times, and shorter commuting distances."）
- 群体总括：`Both <组A> and <组B> have drastically different <对象> and may not interact much with each other.`（2015_Zhou_7343）

### 3.6 空间分布/地图结果句式（你的重点：你的分组空间落位直接对应）

**核密度/地图描述**（位置词 + 地点清单）：
- `It was observable that the areas with the highest concentration of <对象> were primarily located in <位置1> and partially situated in <位置2>, which are <解释>.`（2024_Chen_5974："...the urban center of Beijing... several sub-centers, which are typical employment hubs and emerging job parks in Beijing."）
- `<对象> were mainly concentrated in the core economic zones of <城市>, including <地点清单> (Fig. <N>).`（Zheng2026）
- `<人群> are particularly clustered in <地点A>, <地点B>, and <地点C>.`（Xiao2020）
- `There is a clear spatial disparity in <对象> between <组A> and <组B>. <组A> are predominantly concentrated within <区域>, displaying a marked <形态词> clustering pattern (Fig. <N>).`（2026_Ding_7711："...within the Ring Expressway, displaying a marked centripetal clustering pattern."）
- `BCs exhibit pronounced spatial aggregation in three concentric distance bands from the city center: <带1> (Zone I), <带2> (Zone II), and <带3> (Zone III).`（2026_Zhuang_8043）

**格局句（方向/圈层/核心-边缘）**：
- `An <方向> pattern can be found, in which <区域1> is mainly <类别A>, whereas <区域2> is mostly <类别B>.`（2023_Shi_7664："An east–west pattern can be found, in which the western part of Shenzhen is mainly low- and medium-mobility clusters, whereas the eastern part is mostly taken up by medium- and high-mobility clusters."）
- `Evidently, <指标> in <内层> is higher than in <外层>.`（2017__6166）
- `The average accessibility scores for <组> in <区1>, <区2> and <区3> are <值1>, <值2> and <值3>, respectively.`（2017__6166）
- `As illustrated in Fig. <N>, <单元1> exhibited <结果1>, while <单元2> exhibited <结果2>, particularly in <位置>.`（2022_Gao_7829）
- `The spatial distribution pattern of <变量> was similar in all <分组>. In other words, the patterns were concentrated around <热点>.`（2021_Jang_7876）
- `Grids with <高值条件> occupy <比例> of <区域A>, while the percentage of <区域B> is only <比例>.`（2024_Sun_7832）

**空间统计（Moran's I / 自相关）**：
- `This yielded a Global Moran's I value of <值>, indicating spatial aggregation with a significant positive spatial correlation.`（2022_Gao_7829：0.30）
- `The results show that Moran's I of <变量> is highly positive (<值>) at a significance level of p = <值> using <N> permutation tests, suggesting <解释>.`（2022_Li_7394：0.491, p = 0.01, 999 permutation tests）
- `All <单元> demonstrated statistically significant <统计量> (p < 0.001), indicating that <模式>.`（2026_Chamberlain_8947）
- `The univariate spatial autocorrelation analysis revealed that <变量> exhibit a positive correlation, suggesting a trend of agglomeration in their spatial distribution.`（2025_Azari_8061 骨架）

**分布形态（长尾/拟合）**：
- `Fig. <N>a indicates that the overall <指标> of residents exhibits a clear right-skewed long-tailed distribution, with <比例> of trips occurring within <距离>.`（2026_Fan_8053：71% within 5 km）
- `As <自变量> increases, <因变量> shows <变化>, which is well-fitted by <函数> with an adjusted R2 of <值>.`（2026_Fan_8053：exponential, 0.98）

### 3.7 结果-方法呼应句与"从描述到机制"的推进句

- **结果首段交代与方法的对应**：`First, <step1> (Sect. <N>). Second, <step2> (Sect. <M>). Third, <step3> (Sect. <K>).`（Gao2025）
- **回归表转译句**：`The regression results are shown in Table <N>. As suggested by the beta coefficients, after controlling for <协变量>, <主变量> remains a significant determinant of <指标集>.`（2019_Zhang_7717）
- **与前期分析回扣**：`These findings are consistent with those of the <前期分析> analysis.`（2019_Zhang_7717）
- **跨证据互证**：`Echoing this finding, <另一证据> show that <发现> (see Table <N>).`（2017__6166）
- **从描述到机制的转场**：`We first consider <A>. Then we analyze <B>. Finally, we investigate <C>.`（2018_Davidson_6227 骨架：先定性后定量）
- **节末收束句**：`Overall, <自变量> significantly <动词> <因变量>, leading to <结果1> and <结果2>.`（Zheng2026）/ `In general, both cross-sectional and longitudinal results indicate <总结性判断>.`（Tao2020）

---

## 四、陷阱与红线（真实审稿/批注教训）

1. **❌ 结果节写展开式解释**：机制论证、与文献对话、政策含义写进结果段。真实论文的解释是受控的（一句带过 / suggesting 转译 / 单设解释小节 / First-Second 候选清单，见 2.4）；展开是讨论节的事。
2. **❌ 数字无方向或无参照**：只报"0.57"不报"谁比谁高、比谁高"。真实论文每句统计都带 higher/lower/compared to/than/vs.，串报用 respectively（2024_Chen_5974、2024_Zhang_7449、2026_Wang_8274）。
3. **❌ 表图不呼应**：表图编号出现却不说明"这张表/图讲什么"，或图与表重复却不说关系。真实论文用引导动词+内容概括（2023_Liu_8071）、跨表交叉引用（2017__6166）、图是表的再表达（2026_Won_8833）。
4. **❌ 小节无主题句**：每小节第一句不是"这一段的主发现/目的"。真实论文每个子节首句即主发现（Palm2025），节末有 Overall/In summary（2026_Wang_8274、Zheng2026）。
5. **❌ p 值滥用**：只给星号不给方向与大小，或不显著结果藏着不报。真实论文报 "OR = 0.65, 95 % CI: 0.41, 1.03"（2023_Oostenbach_7984）、"β = 0.018, p < 0.001"（2026_Lee_7708）、"nonsignificant (p = 0.802)"（2022_Li_7394），不显著清单单独成段（Kim2024、Ta2021、2026_Ding_7711）。
6. **❌ 聚类/分组只报结果不报依据**：k 怎么定的、类为什么叫这个名字没有交代。真实论文给 elbow/Silhouette/AIC 依据（2018_Davidson_6227、2023_Lu_8074、2026_Guo_8821），命名带 since-justification（2014_Wu_6549）。
7. **❌ 空间结论无空间证据**：说"内城高、外城低"却不给地图引用或 Moran's I。真实论文地图引用后紧跟解读（Zheng2026、2026_Ding_7711），空间论断配空间统计（2022_Gao_7829、2022_Li_7394、2026_Chamberlain_8947）。
8. **❌ 结果与方法脱节**：方法定义了分析步骤，结果却另起炉灶。真实论文结果镜像方法链（2023_Liu_8071、2026_Zhuang_8043、2017_Tan_6973），开篇总览映射小节（Gao2025）。
9. **❌ 反直觉发现不标记不给候选解释**：发现与预期相反却平铺直叙。真实论文用 Surprisingly / Counterintuitively / It is worth noting that / What was surprising was 标记（Kim2024、2025_Cao_3074、2026_Ding_7711、2020_Wang_8696），随后给候选机制（Vitrano2023、2017__6166）。
10. **❌ 结果=程序重述**：写"我们做了回归"不写"发现什么"。结果节的每个小节必须回答一个子问题（2021_Lu_5979 与 RQ 一一对应）。
11. **❌ 图孤悬不解读**：引了图不给数字结论。真实论文"图不孤悬，必配解读"（2026_Liu_7724、Xiao2020）。
12. **❌ 元统计堆砌**：不写"数十篇里 34 篇…"这种话（本指南仅供写作参考，论文正文绝不出现元统计）。

---

## 五、自查清单（机械可执行）

□ 读者能回答三问：发现了什么 / 每个发现对应哪个研究问题 / 数字和方向是否清楚？
□ 结果顺序与方法的分析步骤一一对应（方法定义了"先看什么后看什么"），或与研究问题/假设一一对应？
□ 开篇有总览/总起（First…Second… 映射小节，或先报样本规模）？
□ 每个小节首句是主题句（主发现或目的），节末有 Overall/In summary 小结或过渡句？
□ 每条发现 = 数字 + 方向 + 参照（higher/lower than、compared to、respectively），无孤立数字？
□ 表格引用用了引导动词 + 内容概括（Table N shows/presents/summarizes…），随后有正文解读？
□ 图引用用了图号 + 位置词 + 解读（Fig. N shows…，concentrated in/clustered in…），图不孤悬？
□ 跨表/表图有互证或回扣（Echoing this finding / consistent with / 图是表的再表达）？
□ 差异检验报告了检验名 + 统计量/显著性 + 方向（t-test / Mann-Whitney U / ANOVA+post hoc / K-S / Kruskal-Wallis）？
□ 回归结果报告了系数方向 + 大小 + 显著性（β/OR/IRR + p 值或星号 + 参照组）？
□ 不显著结果单独报告了（零发现清单 / "no impact" 句 / CI 含 1 也如实报）？
□ 聚类/分组：k 选择依据（elbow/Silhouette/AIC）+ 类命名依据（since）+ 每类极值特征 + 组间比较句齐全？
□ 空间分布：有地图引用 + 位置描述 + （如适用）空间统计（Moran's I），空间结论有空间证据？
□ 反直觉发现用标记词（Surprisingly / Counterintuitively / It is worth noting）并给候选机制？
□ 解释只以受控形态出现（一句带过 / suggesting 转译 / 单设小节 / First-Second 清单），机制展开留讨论节？
□ 稳健性以内嵌方式交代了（表注 / 模型对比 AIC-BIC / 敏感性），不必单设小节？
□ 全部摘录句可回库核实（Zotero），引文与原文一致？

---

> 与 [04-methods.md](04-methods.md)（方法节：结果顺序应镜像方法步骤）、[07-discussion.md](07-discussion.md)（讨论节：结果节的解释边界——一句带过归结果、展开论证归讨论）、[09-layering.md](09-layering.md)（认知递进）配合使用。
> 语料中间产物：cities_section_lib/sec_F.md（数十篇结果节精提取）、cities_ds_parse/<tag>.md（逐篇全章节精提取）。
