# Cities 方法节写作指南（真实语料版）

> **语料基础**：Zotero 库内真实 Cities 论文"数据与方法 Data & Methods"节精提取 数十篇（cities_section_lib/sec_E.md）。全部例句逐字摘录自原文，可回库核实。
> **[DATE] 重写原则（改写说明，推翻 v1 的模板化写法）**：
> 1. 写作逻辑只能从 Zotero 库真实 Cities 论文提炼；**你自己的论文是被指导对象，不是语料来源**。
> 2. 不是罗列"多少篇/百分之几"，而是提炼"方法节按什么顺序写""指标怎么定义、聚类怎么交代、模型怎么选"等真正有用的写作判断，配中英例子，让英文不好的模型照骨架写出合格英文。
> **v1 遗留问题（已修正）**：①v1 写"方法节必须有空间方法"，实测方法节的组织由**分析链类型**决定（步骤流水线/概念框架先行/数据→变量→模型），不是"空间方法清单"；②v1 部分句子无出处，现在每条都有真实论文 tag；③v1 缺你最需要的三类句子——**核心变量/活动空间类指标构建**、**K-means 聚类交代**、**统计模型选择论证**，本版专章补齐。

---

## 〇、这一章的"工作"是什么

读者（审稿人）读完方法节，要能回答四个问题：
1. **指标怎么来的**（每个指标/变量的操作性定义→公式→阈值/参数理由→示例）；
2. **分类/聚类怎么做的**（算法选择理由、K 值怎么定、输入是否标准化、结果怎么验证）；
3. **模型为什么是这个**（数据性质/理论结构/空间诊断驱动，不是"跟文献走"）；
4. **结果能不能复现**（软件、参数、阈值、随机种子、数据划分）。

**判断标准**：方法节不是操作手册流水账，而是一条**决策链**——每个方法选择都有"为什么"，每步输出都是下一步输入。本指南只管 Methods 部分（指标/聚类/模型/可复现性）；"数据是什么/代表谁/局限"归 [03-data.md](03-data.md)，数据节与方法节是上下游：数据节给原料，方法节给加工方式。

---

## 一、真实论文怎么组织：先判断分析链类型

数十篇实测：方法节的内部组织**由分析链类型决定**，三种主线（可混用）：

| 组织主线 | 真实顺序 | 代表论文 |
|---|---|---|
| **按分析步骤 1-2-3 流水线** | 总起句给 N 步框架（Fig. 流程图）→ 逐步骤编号展开，每步输出=下一步输入 | Zheng2026（四步）、2026_Liu_8807（六步）、2022_Gao_7829（三步）、2021_Cao_8109（三阶段）、Gao2025（四步）、2023_Shi_7664（方法链） |
| **概念/假设框架先行** | 先把"要验证什么/测量框架"讲清楚 → 再供数据 → 再上模型，使结果节逐条兑现 | 2022_Hu_7955（假设先行）、2016_Wang_8603（先立四维框架）、2015_Zhou_7343（概念谱系）、2023_Qiao_5967（SEM 四假设） |
| **数据→变量→模型 经典三段** | 数据源 → 变量操作化 → 统计方法，每节"定义→理由→公式"小循环 | 2021_Lu_5979、2023_Liu_8071、2026_Li_8817、2014_Wu_6549、2016_Tammaru_8475、Tao2020 |

**让方法节"可复现"的三个真实做法**：
- **总起句给全图**：`Fig. 2 shows that the framework of this study. In this work, our methodology includes four steps: (1) ... (2) ... (3) ... (4) ...`（Zheng2026）；`The analysis framework used in this study is illustrated in Fig. 1 and includes four steps: (1) ... (2) ...`（2024_Chen_5974）。先给地图，读者才知道后面往哪走。
- **步骤编号与子节号一一对应**：3.2.1 预处理 → 3.2.2 识别 → 3.2.3 行为指标 → 3.2.4 模式探索（Zheng2026）；"Steps A–C describe data preparation, while Steps D–F correspond to hypothesis testing procedures."（2026_Liu_8807）。
- **目的句开头**：每个方法小节第一句回答"这一节解决什么问题"——`To examine the impact of working features on outdoor leisure activity among fixed-location workers in Nanjing, we followed a four-step approach: data preprocessing, feature extraction, feature compression, and Geodetector analysis (Fig. 3).`（Gao2025）；`In order to examine the causal relationship between ethnicity and space-time behavior, structural equation modelling (SEM) is applied.`（2017_Tan_6973）。

---

## 二、段落级写法（按你的论文方法链组织：核心变量指标 → K-means → 组间比较）

### 2.1 指标/变量构建（你的重点：核心变量指标、活动空间类指标）

真实论文指标写作的标准循环是：**文字定义 → 公式 → 参数/阈值理由 → 示例/端点解释**。四步缺一不可。

- **定义先行、公式收尾**：`This study uses the internal traffic ratio (ITR) as the dependent variable. ITR represents the proportion of non-work trips that both originate and terminate within the same neighborhood.`（2026_Lee_7708）
- **公式后必给符号解释 + 方向语义**：`The entropy-based diversity index is assessed using the following formulation: DAT = ... where DAT is the diversity of participants' routine activity types, and pi is the proportion of each routine activity type reported by one participant. The higher its value, the higher is activity diversity.`（Ta2021）——`where <符号> is <定义>. The higher its value, the higher is <含义>.`
- **指标端点解释（0/1 分别代表什么）**：`A value of Sj = 0 indicates that CBG j is visited equally by all income quantiles ... In contrast, Sj = 1 corresponds to a CBG visited exclusively by a single income group, reflecting a maximal level of income segregation.`（2026_Li_8809）
- **多指标框架要有"维度分工"句**：`Three indicators are proposed to measure work mobility in this study: travel space compactness, travel space size, and average travel distance. The last indicator is self-explanatory, whereas the former two indicators are derived from the concept of activity space.`（2023_Shi_7664）；`We extracted three indicators from daily commuting characteristics: the housing–job ratio (HJR), indicating ...; the median commuting distance (MCD), capturing ...; and the number of long commuters (LCN), reflecting ...`（2026_Zhuang_8043）——骨架：`We extracted <N> indicators: <A>, indicating ...; <B>, capturing ...; and <C>, reflecting ...`
- **指标要有来源/继承**：`We follow Brown and Chung (2006)'s method and use two measures to test for social interaction: evenness and exposure.`（2023_Lu_8074）；`Inspired by Moro's index and activity contexts (Moro et al., 2021; Toomet et al., 2015), we constructed ... indicators ... to depict the comprehensive segregation level of grid units and individuals.`（2024_Sun_7832）
- **阈值/参数必给理由**（官方标准、文献惯例、行为假设三选一）：`This choice is grounded in the Technical Standards issued by the Shanghai Municipal Bureau of Planning and Natural Resources (2024), which specify that neighborhood life circles in the central city should be delineated based on a 15-minute walking principle, corresponding to a service radius of about 1000 m.`（2026_Wang_8274）；`a 500-meter (approximately 10 min walk) radius is selected because we hypothesize that residents can perceive the environmental context within this area.`（2019_Zhang_7717）
- **操作化理由显式化**（为什么这个口径不用那个）：`While other proximity variables were calculated based on the number or density of facilities, an area-based measure was considered more appropriate for parks due to the substantial variation in their sizes across neighborhoods...`（2026_Lee_7708）；`Compared with the mean commuting distance, the MCD is less sensitive to extreme values and provides a more robust measure of the typical commuting burden experienced by at least half of the residents.`（2026_Zhuang_8043）

### 2.2 聚类/分类方法（你的重点：K-means++ 你的分组）

数十篇里聚类写作的完整交代顺序：**算法选择理由 → 输入变量（列清单）→ 标准化/缺失值处理 → K 值确定（至少一种方法）→ 结果解释/命名依据**。

- **算法引入带定义与理由**：`To develop commute typologies based on origin and destination socio-demographics, we employ the k-means clustering algorithm (Hastie, Tibshirani, & Friedman, 2016) to conduct a cluster analysis of the dataset, across all commute patterns.`（2018_Davidson_6227）；`The K-means clustering method, a widely used unsupervised machine learning technique, identifies clusters within a dataset by analyzing the similarities and dissimilarities among individual data points (Rogerson, 2019).`（2025_Azari_8061）
- **聚类目的句 + 输入指标句**：`To classify residents based on these four mobility indicators, we apply the K-means clustering method.`（2026_Liu_8807）；`To further explore the different spatio-temporal behavior patterns among overtime workers, we classified them based on indicators including working hours, commuting distance, and commuting displacement distance ratio (commuting displacement distance/total displacement distance).`（Zheng2026）——你的论文"核心变量指标→K-means"直接套此两句。
- **K 值确定——至少报一种方法，最好两种**：`We use two methods to determine the optimal cluster number (K): (1) the Elbow method and (2) the Silhouette score.`（2023_Lu_8074）；`The optimal number of clusters is determined using the silhouette coefficient and the Calinski–Harabasz index (Caliński & Harabasz, 1974; Rousseeuw, 1987).` + `Higher scores on these metrics indicate more distinct clusters. As shown in Fig. 4, the highest scores are achieved when the number of clusters is set to 2.`（2026_Liu_8807）；肘部法完整版：`A scree plot is first produced, which displays the sum of squared errors in k clusters against the k number of clusters. Researchers often use the location of the 'elbow' in the scree plot as the optimal number of clusters...`（2018_Davidson_6227）
- **K 的主观性要坦诚 + 用方法对冲**：`The K-means clustering requires pre-specification of the total number of clusters (i.e., K), which inevitably introduces subjectivity into construction of reasonable clusters (Pham et al., 2005).`（2023_Lu_8074）
- **输入标准化与缺失值处理**：`Therefore, all clustering variables were standardized around a mean of zero before applying the algorithm. In addition, the k-means algorithm cannot be applied to observations that contain missing data. All observations containing missing data were removed before analysis.`（2018_Davidson_6227）
- **聚类方法之间的选择论证**（为什么 K-means 不用别的）：`partitioning distance-based methods such as k-means or hierarchical clustering are suitable for recognizing spherical-shaped groups, but perform poorly when identifying irregular geometrical shapes (Kassambara, 2017). The DBSCAN algorithm outperformed the traditional clustering methods in our data when attempting to identify the sub-spaces...`（2021_Ponce-Lopez_7967）；`PAM yielded more reliable results ... because medoids are less sensitive to noise and outliers than k-means or hierarchical clustering.`（2021_Ponce-Lopez_7967）
- **聚类结果落地为类型**（类型命名/定义依据）：`We define three strata in this paper: 1) Upper strata. High income, education, and employment levels, and low minority populations. 2) Middle strata. ... 3) Lower strata. ...`（2018_Davidson_6227）

### 2.3 统计模型（模型设定句、控制变量句、稳健性句）

- **模型设定——目的句先给**：`We model the workplace segregation of immigrants by applying, first, Ordinary Least Squares regression on our panel dataset in order to shed light on structural workplace segregation.` / `To overcome the problem that some unmeasured time-invariant individual characteristics jointly influence workplace and residential segregation, we also estimate a fixed effects regression model for the change in workplace segregation.`（2016_Tammaru_8475）
- **模型设定——因变量/自变量明确句**：`This study applies multiple linear regression to examine the effects of spatial factors on residential spatial differentiation, using the Location Quotient (LQi) of migrants as the dependent variable.`（2026_Ding_7711）；`In the ANOVA, dependent variables are the three continuous indicators of mobility: compactness, travel space size, and travel distance. The independent variable is the identified social areas.`（2023_Shi_7664）
- **控制变量句——目的即"隔离混杂"**：`Additionally, to discern whether the observed differences in AAS and PAS are due to other systematic differences among residents living in different types of housing, regression analysis is used to control the socio-demographic characteristics and the built environment.`（2019_Zhang_7717）；`Finally, a set of origin and destination control variables is included to isolate the effect of physical barriers.`（2026_Won_8833）
- **"不调整什么"也要给理由**：`We argue that income lies on the causal pathway between the exposure and the food practices outcomes. Therefore, to avoid overadjustment bias, we did not adjust for household income in our analysis (Schisterman et al., 2009).`（2023_Oostenbach_7984）
- **标准误处理**：`We cluster standard errors in all our regressions at the SAMS level to take into account that neighborhood exposure is an aggregated variable.`（2016_Tammaru_8475）；`Using household level attributes for a dependent variable predicting trips with another householder necessitated using cluster-robust standard errors across all models.`（Palm2025）
- **稳健性句——换阈值/换单元/换设定**：`To test robustness, LMI is also recalculated under five alternative thresholds between 1.0 and 2.0 km (1.0, 1.25, 1.5, 1.75, and 2.0 km), but the 1 km threshold remains the main reference for methods, results, and mechanism analysis.`（2026_Wang_8274）；`Thus, we examine the possible influence of unit selection on the results by making a comparison among uniform grids with different sizes and administrative units.`（2024_Sun_7832）

### 2.4 模型选择/比较论证（为什么用这个不用别的）

真实论文的三条论证路径，按数据诊断 → 理论结构 → 对比式分类：

- **数据性质驱动**（因变量形态决定模型）：`Because OD frequencies are non-negative count variables, ordinary least squares and general linear models are not appropriate. Preliminary diagnostics indicate substantial overdispersion, where the variance greatly exceeds the mean (Appendix 4). Therefore, a negative binomial regression model is employed to estimate the OD-level travel frequencies.`（2026_Liu_8807）；`We chose to model time crunch with a negative binomial regression because the time crunch index is a discrete numeric index.`（Kim2024）；AllenFarber2020 三步诊断范本：`The dependent variables are count data and are modelled best using negative binomial regression due to over-dispersion.` / `Zero-inflated models were deemed unnecessary due to lack of abundance of zero-values in the data.` / `Model residuals were also tested for spatial autocorrelation, but they were found to be quite low (Moran's I < 0.03), so spatial models were not deemed necessary.`
- **理论结构驱动**（决策过程分阶段）：`Recognizing that activity participation typical involves two stages of decision-making: (1) whether to participate..., and (2) how frequently to participate..., we also employ hurdle count models...` + `While both zero-inflated and hurdle models are designed to handle excess zeros in count data, they differ conceptually and in their assumptions about the underlying data-generating process. ... Hence, hurdle models are more appropriate conceptually and structurally for modelling activity generation and frequency.`（DongMiller2026）；`This approach is preferred over standard ordered probit/logit models because it accounts for unobserved heterogeneity—recognizing that immigrants may belong to distinct latent groups...`（2026_Guo_8821）
- **空间诊断驱动**（检验流程逐步走）：`This study first employed an ordinary least squares (OLS) regression to examine the relationship between digitalization variables and neighborhood-level mobility. Subsequently, spatial autocorrelation was tested using Moran's I statistic, which revealed significant positive spatial dependence in the OLS residuals (I = 0.088, p < 0.001).` + `The LM test for SEM was statistically significant (RSerr = 8.529, p = 0.004), as was the robust error test (adjRSerr = 6.535, p = 0.011), whereas the robust test for SLM was not statistically significant (adjRSlag = 2.444, p = 0.118). Based on this result, SEM was selected as the final model.`（2026_Lee_7708）；`Since the community units are spatially interconnected, the focal community might be affected by its neighbouring communities, violating the independence assumption of the traditional ordinary least squares (OLS) model. Therefore, a spatial lag multivariate regression model (SLM) was used to eliminate the bias of autocorrelation (LeSage & Fischer, 2008).`（2022_Li_7394）
- **对比式**（承认旧法优点→指出局限→To address this limitation 引出新法）：`In contrast to OLS regressions, the XGBoost algorithm utilizes a gradient descent optimization algorithm to ensemble decision trees and minimize the model error.`（2024_Chen_5974）；`To address this limitation, this study develops a deep gravity modeling framework that preserves the fundamental spatial constraints of the classical gravity model ..., while incorporating neural networks to enhance nonlinear representational capacity.`（2026_Fan_8053）
- **"不作直接解释变量"的内生性规避声明**（你的论文可借鉴——聚类分组作分组变量而非解释变量）：`This dual mechanism provides the theoretical basis for our empirical analysis, where mobility is used as a grouping variable rather than a direct explanatory variable, thereby avoiding potential endogeneity issues.`（2026_Liu_8807）

### 2.5 可复现性要素（参数、软件、阈值、随机种子）

真实论文必报的四类细节，缺一不可：

| 要素 | 真实例句 | 出处 |
|---|---|---|
| 数据划分 | `We utilized the "train test split" method to partition the dataset of dependent and independent variables in an 80:20 ratio. The model's hyperparameters were fine-tuned using a Bayesian optimization algorithm and 5-fold cross-validation...` | 2024_Chen_5974 |
| 随机种子 | `All experiments fix the random seed at 42 and adopt a 7:3 split between the training and test sets.`（骨架） | 2026_Fan_8053 |
| 随机种子（多次取均值） | `The dataset was split into the training set and validation set by 4:1. In training the ASU-DNN, we set 100 random seeds and averaged their results.` | 2025_Cao_3074 |
| 软件与估计方法 | `Maximum likelihood (ML) estimation was chosen to fit two SEMs using AMOS 17.0, one for the weekday survey day and one for the weekend survey day.` | 2017_Tan_6973 |
| 超参数全清单 | `After comparing the prediction accuracy of different combinations of hyper-parameters, we obtained the optimal hyperparameter space, with SeLU as the activation function, cross entropy as the loss function, ... and batch size of 64.` | 2025_Cao_3074 |
| 标准化处理 | `To ensure comparability across variables with different measurement scales, z-score standardisation is applied to all explanatory variables prior to model estimation, using the full sample rather than within-group values so that coefficients remain comparable across mobility-group models.` | 2026_Liu_8807 |

---

## 三、句式与例子速查（真实提取，按需取用，附出处）

### 3.1 指标构建类（核心变量/活动空间/熵/可达性/隔离）

- 指标总起+维度分工：`We extracted <N> indicators from <对象>: <A>, indicating ...; <B>, capturing ...; and <C>, reflecting ...`（2026_Zhuang_8043）
- 指标继承：`We follow <作者> (<年>)'s method and use <N> measures to test for <概念>: <A> and <B>.`（2023_Lu_8074）
- 公式收尾：`The <指标> is assessed using the following formulation: <公式> where <符号> is <定义>. The higher its value, the higher is <含义>.`（Ta2021）
- 端点解释：`A value of <S> = <0值> indicates that <单元> <完全理想状态>. In contrast, <S> = <1值> corresponds to <完全隔离状态>.`（2026_Li_8809）
- 参数理由：`<阈值> is selected because we hypothesize that <行为假设>.`（2019_Zhang_7717）；`This choice is grounded in <官方文件>, which specify that <规则>.`（2026_Wang_8274）
- 口径理由：`While other <变量> were calculated based on <口径A>, <口径B> was considered more appropriate for <对象> due to <原因>.`（2026_Lee_7708）
- 失败—替代（指标不可用时的诚实路径）：`However, given <失败原因>, <旧指标> fails to show any significance with variables other than <范围>. As a result, <替代指标> is used to <目的>.`（2014_Wu_6549）

### 3.2 聚类类（你的重点：K-means）

- 算法引入：`To <目的>, we employ the <算法> clustering algorithm (<引用>) to conduct a cluster analysis of the dataset.`（2018_Davidson_6227）
- 输入指标：`To classify <对象> based on <N> <指标>, we apply the <算法> clustering method.`（2026_Liu_8807）
- K 值确定：`The optimal number of clusters is determined using <方法1> and <方法2> (<引用>).` + `As shown in <图>, the highest scores are achieved when the number of clusters is set to <K>.`（2026_Liu_8807）
- 主观性坦诚：`The <算法> requires pre-specification of the total number of clusters, which inevitably introduces subjectivity into construction of reasonable clusters (<引用>).`（2023_Lu_8074）
- 标准化：`All clustering variables were standardized around a mean of zero before applying the algorithm.`（2018_Davidson_6227）
- 方法对比：`<方法A> are suitable for <形状A>, but perform poorly when <缺陷>. The <方法B> outperformed the traditional clustering methods in our data when attempting to <任务>.`（2021_Ponce-Lopez_7967）

### 3.3 统计模型类

- 模型总述：`To examine <研究问题>, this study estimates two <模型族> models. First, <模型一> examines <问题一>. Second, <模型二> employs <框架> to evaluate <问题二>.`（2026_Won_8833）
- 双规格对比：`In the baseline specification, <关键变量> is excluded so that the <系数> represent <总效应>. An extended specification subsequently includes <关键变量> to identify <分解效应>.`（2026_Won_8833）
- 稳健性：`To test robustness, <测度> is also recalculated under <替代设置>, but <基准> remains the main reference for <部分>.`（2026_Wang_8274）

### 3.4 模型选择论证类

- 数据性质：`Because <因变量> are <数据性质>, <模型A> and <模型B> are not appropriate. Preliminary diagnostics indicate <诊断结果>. Therefore, <模型C> is employed.`（2026_Liu_8807）
- 理论结构：`Recognizing that <行为> involves <N> stages of decision-making: (1) <阶段1>, and (2) <阶段2>, we employ <模型>.`（DongMiller2026）
- 空间诊断：`Subsequently, <检验> was conducted, which revealed <结果>. Based on this result, <终选模型> was selected as the final model.`（2026_Lee_7708）
- 对比式：`In contrast to <基准模型>, <新方法> utilizes <机制> to <收益>.`（2024_Chen_5974）
- 分组变量声明：`<变量> is used as a grouping variable rather than a direct explanatory variable, thereby avoiding potential <问题>.`（2026_Liu_8807）

---

## 四、陷阱与红线（真实审稿教训）

1. **❌ 报参数不报理由**：写"500 m 阈值"不解释为什么。真实论文给官方标准（2026_Wang_8274 上海 15 分钟生活圈）、文献惯例（2023_Tao_5710：`Following previous research, we used 15 min as the threshold...`）、行为假设（2019_Zhang_7717 500 m≈10 分钟步行）。
2. **❌ 公式无来源**：指标公式裸奔。真实论文给继承句（`We follow Brown and Chung (2006)'s method` 2023_Lu_8074）或灵感句（`Inspired by Moro's index` 2024_Sun_7832）。
3. **❌ 聚类 K 值无论证**：直接写"分为 4 类"没有确定方法。真实论文必报 Elbow/Silhouette/Calinski–Harabasz 至少一种，最好两种互相印证（2023_Lu_8074、2026_Liu_8807、2018_Davidson_6227）。
4. **❌ 聚类输入不标准化**：不同量纲指标直接进 K-means。真实论文明确写"standardized around a mean of zero"（2018_Davidson_6227）或"z-score standardisation ... using the full sample rather than within-group values"（2026_Liu_8807）。
5. **❌ 指标口径不自证**：为什么用中位数不用均值、用面积不用数量，必须一句理由（2026_Zhuang_8043 MCD、2026_Lee_7708 公园面积比）。
6. **❌ 模型选择无诊断**：不检验过离散/零值/空间自相关直接选模型。真实论文三步诊断（AllenFarber2020）或 LM 检验流程（2026_Lee_7708、2026_Li_8817）。
7. **❌ 只报"用了 X"不报"为什么不是 Y"**：方法选择必须对比（2024_Chen_5974 XGBoost vs OLS/RF/DNN、DongMiller2026 ZIP vs hurdle、2021_Ponce-Lopez_7967 k-means vs DBSCAN/PAM）。
8. **❌ 不交代软件/种子/划分**：可复现性四要素（软件、超参数、随机种子、数据划分）至少报软件与关键参数（2017_Tan_6973 AMOS、2025_Cao_3074 100 seeds、2024_Chen_5974 80:20+5 折）。
9. **❌ 方法节纯清单**：没有"先做……再做……"的目的句，审稿人不知道每步回答什么问题（对比 Zheng2026、Gao2025 的目的句）。
10. **❌ 把聚类结果当解释变量**：若分组变量同时进回归可能内生。真实论文明确声明"used as a grouping variable rather than a direct explanatory variable"（2026_Liu_8807）。
11. **❌ 元统计堆砌**：不写"数十篇里 34 篇…"这种话（本指南仅供写作参考，论文正文绝不出现元统计）。

---

## 五、自查清单（机械可执行）

□ 方法节开头有"全图句"：N 步框架/两阶段设计 + 图或编号（1)(2)(3)(4)？
□ 每小节以目的句（To ... / In order to ...）开头，说明"解决什么问题"？
□ 每个指标走完四步：文字定义 → 公式（含 where 符号解释）→ 阈值/参数理由（官方/文献/行为假设）→ 端点或方向解释？
□ 多指标给了"维度分工"句（A indicating ...; B capturing ...; C reflecting ...）？
□ 聚类交代了：算法选择理由 + 输入指标清单 + 标准化/缺失值处理 + K 值确定方法（≥1 种，有引用）+ 类型命名依据？
□ K 值主观性是否坦诚声明并用方法对冲？
□ 模型选择有诊断驱动：因变量形态（计数/离散/过离散）、理论结构（分阶段）、空间自相关（Moran's I/LM 检验）至少一条理由？
□ 控制变量句说明了目的（isolate / control for confounding）？"不调整什么"给了理由？
□ 稳健性处理交代了（换阈值/换空间单元/换模型设定/多次随机种子）？
□ 可复现四要素齐全：软件+版本、超参数、随机种子、数据划分比例？
□ 标准化处理写明基准（full sample vs within-group），保证组间系数可比？
□ 全部摘录句可回库核实（Zotero），引文与原文一致？

---

> 与 [03-data.md](03-data.md)（数据节：管"数据是什么/代表谁/局限"，方法节管"怎么分析"）配合使用；两节分工界面：识别规则（职住/停留）可放数据节，指标构建（核心变量/活动空间）放方法节。
> 语料中间产物：cities_section_lib/sec_E.md（数十篇数据与方法节精提取）、cities_ds_parse/<tag>.md（逐篇全章节精提取）。
