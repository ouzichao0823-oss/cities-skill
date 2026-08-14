# Cities 数据节写作指南（真实语料版）

> **数据基础**：Zotero 库内真实 Cities 论文"数据与方法 Data & Methods"节精提取 数十篇（cities_section_lib/sec_E.md，对应 cities_ds_parse/ 逐篇精提取）。全部例句逐字摘录自原文，可回库核实。
> **[DATE] 重写原则（改写说明，推翻 v1 的模板化写法）**：
> 1. 写作逻辑只能从 Zotero 库真实 Cities 论文提炼；**你自己的论文是被指导对象，不是语料来源**。
> 2. 不是罗列"多少篇/百分比/多少条句式"，而是提炼"数据节按什么顺序写""哪些信息必须有、哪些可砍"等真正有用的写作判断，配中英例子，让英文不好的模型照骨架写出合格英文。
> **v1 遗留问题（已修正）**：①v1 把"空间技术参数清单"写成万能模板——实测数据节的内部组织由**数据源类型**决定（信令/问卷/普查/GPS/多源融合各有各的顺序），不是一套参数表；②v1 部分句子无出处，现在每条都有真实论文 tag；③v1 缺"样本代表性怎么论证""无独立数据节时谁承担数据功能"两条指导——正是你的稿件（手机信令、数据驱动实证）最需要的。

---

## 〇、这一章的"工作"是什么

读者（审稿人）读完数据节，要能回答四个问题：
1. **数据是什么**（来源机构、记录机制、字段、格式/精度）；
2. **为什么用这批数据**（数据能力与研究问题匹配：追踪粒度/时间分辨率/字段可得性）；
3. **样本代表谁**（样本量、占人口比例、与官方统计对照、筛选后样本的定义）；
4. **局限是什么**（采样偏差、覆盖不足、精度问题，以及论文如何回应）。

**判断标准**：数据节不是"数据清单"（供应商+年份+样本量流水账），而是一条**证据链**——每个数字都在回答"样本能否支撑结论"，每条筛选规则都在说明"为什么这样筛、筛完剩下谁、剩下的代表谁"。本指南只管 Data 部分（数据是什么/为什么/代表谁/局限）；"怎么分析"归 [04-methods.md](04-methods.md)。

---

## 一、真实论文怎么组织：先判断数据源类型

数十篇实测：数据节的内部组织**由数据源类型决定**，没有万能模板。先做类型判断：

| 数据源类型 | 组织主线（真实顺序） | 代表论文 |
|---|---|---|
| **手机信令/移动定位** | 来源机构→数据机制→时间窗→规模→预处理→识别规则→空间单元→匿名→验证 | 见 1.1（重点） |
| **调查问卷/活动日志** | 调查设计→抽样→筛选→样本量→偏差声明 | 2015_Zhou_7343、2016_Wang_8603、2017_Tan_6973、2022_Hu_7955、2024_Aguilera-García_3062 |
| **行政登记/普查** | 数据权威性→覆盖范围→单元粒度→为何选它 | 2014_Wu_6549、2016_Tammaru_8475、2017__6166、2018_Davidson_6227 |
| **GPS/出行日志** | 调查机制→时段→样本→日记内容→代表性 | 2019_Zhang_7717、Palm2025、Tao2020、2024_Sun_7832 |
| **POI/多源融合** | 总起句列数据→逐源交代（来源+时间+规模+用途）→空间对齐→表格汇总 | 2022_Li_7394、2023_Liu_8071、2023_Tao_5710、2026_He_8940、2026_Fan_8053 |

数据节常见命名变体：Data / Data sources / Datasets / Data collection / Study area and data source（Zheng2026、Ta2021）——命名不重要，功能一致。

### 1.1 手机信令/移动定位数据（你的论文的数据源，重点）

这类论文的数据节段落结构在 数十篇里高度一致，逐段功能如下（**你的稿件直接照此组织**）：

| 段落 | 功能 | 真实例证 |
|---|---|---|
| **来源机构与权威性** | 交代供应商+市场份额/官方认证，建立"数据可信" | 2024_Zhang_7449、Gao2025、2026_Liu_8807、2026_Lee_7708 |
| **数据机制** | 说明记录方式（被动/每小时/聚合），与 CDR/问卷对比 | 2021_Cao_8109、Xiao2020 |
| **时间窗与选择理由** | 报时段+解释为什么这个时段 | 2024_Chen_5974、2026_Wang_8274、2026_He_8940、2026_Li_8817 |
| **数据规模** | 用户数/记录数/占人口比例 | 2025_Zhou_8137、2023_Lu_8074、Gao2025、Xiao2020 |
| **预处理/清洗规则** | 速度滤波、停留点阈值、去重——具体到数字 | Zheng2026、2022_Gao_7829 |
| **职住/停留识别规则** | 时间窗+时长阈值，可复现 | 2024_Chen_5974、2023_Shi_7664、2026_Ding_7711、Zheng2026、2026_Zhuang_8043 |
| **空间单元** | 网格/街区，给理由（MAUP/隐私/匹配主数据） | 2023_Shi_7664、2025_Chen_7515、2024_Zhang_7449、2024_Chen_5974 |
| **匿名与伦理** | 匿名化、聚合、去标识化 | 2025_Zhou_8137、2023_Qiao_5967、Xiao2020、2026_Won_8833 |
| **验证** | 与官方统计/普查对拍（r、占比对照） | 2023_Liu_8071、2026_Ding_7711、2026_Fan_8053 |

每条的真实例句与句式骨架见第三节 3.1（信令类例句最全，逐字摘录）。

### 1.2 调查问卷/活动日志

组织主线：**调查设计 → 抽样 → 筛选 → 样本量 → 偏差声明**。先交代调查名/时间/地点/机构，再给抽样机制（CATI/多阶段 PPS/分层随机），再报链式损耗（接触→同意→完成），最后主动声明偏差。
- 2016_Wang_8603：CATI 抽样 → "Out of 9261 answered calls, 1490 persons expressed willingness to participate." → "Out of the 1490 individuals initially agreed to participate in the survey, 770 successfully completed the questionnaires." → "Due to the web-based nature of the survey, the sample is biased towards better educated and young individuals."
- 2022_Hu_7955：2372 信封 → 1325 有效（55.9%）→ 清洗后 987 双职工夫妇。
- 2024_Aguilera-García_3062：为什么自建问卷（现成数据不合适）→ 为什么在线（COVID）→ 768→694 → 代表性辩护（引 Solon et al., 2015）。

### 1.3 行政登记/普查

组织主线：**数据权威性 → 覆盖范围 → 单元粒度 → 为何选它**。
- 2014_Wu_6549：普查历史权威 → 尺度改善 → 用它分析社会结构。
- 2016_Tammaru_8475：全人口登记+可追踪个人 → 样本 13,279 人/43,993 观测。
- 2017__6166：两普查互补（居住 vs 就业分布）→ 家庭调查补阻抗函数 → 抽样与普查比例对照。

### 1.4 GPS/出行日志

组织主线：**调查机制 → 时段 → 样本 → 日记内容 → 代表性**。
- 2019_Zhang_7717：GPS 设备 24h×7 天 → 2012 北京 → 样本描述表。
- Palm2025：权威引用 → 筛选（18+）→ n=247,453 对应 N=5,345,419。
- 2024_Sun_7832：大样本调查 + 与 census block 对照验证抽样均匀性。

### 1.5 POI/建筑环境多源融合

组织主线：**总起句列数据 → 逐源交代 → 空间对齐 → 表格汇总**。
- 2022_Li_7394："In this study, six types of data were used: ... (Table 2)."
- 2026_He_8940：8 类数据 + Table 1 汇总（Theme/Sources/Period/Resolution/Application）。
- 2026_Fan_8053：总起段先讲空间一致性（统一投影、裁剪、网格聚合）。
- **关键：空间对齐必须交代**（投影/裁剪/网格匹配），否则多源数据的可比性存疑。2024_Chen_5974："...we decomposed the census attribute data into 250 m × 250 m grids that matched the spatial resolution of the mobile signaling data."

---

## 二、段落级写法（逐段功能 + 三条横切主题）

### 2.1 数据节内部段落功能表

| 段落 | 功能 | 常见内容 | 真实例证 |
|---|---|---|---|
| **第 1 段：数据源总起** | 建立"数据可信+与研究问题匹配" | 来源机构/份额/数据机制/能力句 | 2026_Liu_8807、2021_Cao_8109 |
| **第 2 段：时段与规模** | 报时间窗+样本量，附选择理由 | 时段理由、用户数、占人口比例 | 2024_Chen_5974、2023_Lu_8074、2025_Zhou_8137 |
| **第 3 段：清洗/识别规则** | 让结果可复现 | 阈值、排除标准、职住识别 | Zheng2026、2023_Shi_7664、2020_Wang_8696 |
| **第 4 段：空间单元/多源对齐** | 敲定分析单元，保证 results 可解读 | 网格分辨率、MAUP、对齐处理 | 2025_Chen_7515、2023_Shi_7664、2026_Fan_8053 |
| **末段：匿名/伦理+验证/局限** | 回应审稿人最关心的可信度问题 | 匿名化、对拍验证、局限声明 | 2025_Zhou_8137、2023_Liu_8071、Kim2024 |

### 2.2 样本量与时间窗怎么呈现

**报告链式损耗**（从接触/分发到最终样本，每一步给数字+排除原因）：
- `In December 2019, 2372 envelopes were distributed via four schools of which 1325 were valid responses (a 55.9 % valid response rate). After data cleaning, the information obtained from 987 dual-earner couples (987 *2 = 1974 respondents) was used in this study.`（2022_Hu_7955）
- `The initial sample size was 768 responses, but the final database was reduced after excluding incomplete answers, and removing those observations including inconsistent or non-logical answers. Consequently, the complete dataset for this study consisted of 694 valid responses.`（2024_Aguilera-García_3062）
- `Based on these exclusions, we used 408 survey responses out of 629.`（2021_Choi_7991）
- 信令版链式筛选：`A total of 5,058,669 users meeting the criteria for the resident population were extracted, with an average of 228 records per user.` → `After filtering, the final dataset contained 599,052 unique users, generating 304,347,079 records over 11 study days.`（Gao2025）

**论证样本充分性**（三条真实路径，可叠加）：
- ① 占人口比例：`We collected travel trajectory data from over 850,000 unique mobile devices (approximately 135 devices per CBG), which accounts for roughly 8.5 % of the county population, from January 1, 2020, to August 9, 2020.`（2023_Lu_8074）；`This dataset includes information on 4,888,148 users, approximately 20 % of Shanghai's total population.`（2025_Zhou_8137）；`The selected sample represented 6.3% of Nanjing's total population, providing a reasonable approximation of citywide behavioral patterns.`（Gao2025）
- ② 与普查/官方统计对照：`The proportion of Hui participants (19.4%) is close to that in census data (16.3%).`（2017_Tan_6973）；`...a split very close to the one given by the population census.`（2017__6166）；性别对照见 3.1（2026_Fan_8053）。
- ③ 对拍验证统计量：`The analysis revealed a high correlation coefficient of 0.776 (p < 0.01) between the mobile phone data and official statistics, affirming the representativeness of the identified user information.`（2023_Liu_8071）；`...with a Pearson correlation coefficient as high as 0.87 ... demonstrating the strong reliability of the mobile-based data source.`（2026_Ding_7711）

**时间窗必给理由**（报时段+一句"为什么"）：
- `We adopted a one-mouth dataset of mobile signaling data in Beijing for December 2019 (from December 1 to 31, a total of 31 days), when urban mobility remained unaffected by the COVID-19 pandemic.`（2024_Chen_5974）
- `This period contains no major urban holidays and falls outside both the winter and summer vacation periods, thereby reducing potential disturbances from holiday travel, tourism, and family visits and enabling a more accurate capture of routine local daily activities.`（2026_Wang_8274）
- `October was selected due to its mean temperature and precipitation, which were both considerably suitable for physical activities, with a mean air temperature of 26.4 ◦C, a total rainfall of 546 mm, and a mean relative humidity of 76% (Hong Kong Observatory, 2023).`（2026_Li_8817）

### 2.3 数据清洗/筛选与隐私匿名化怎么交代

**排除标准**（"因为什么技术原因排除谁"）：
- `Respondents with less than three different activity locations per day are excluded because the activity space of these participants cannot be created using the SDE method.`（2020_Wang_8696）
- `After excluding cases that were under 18 years old or with erroneous information (e.g., missing trips, miscoded locations), the final sample consists of 5041 individuals who made home-based walking trips.`（2023_Tao_5710）
- `Because the inter-region express bus terminal is directly linked to the first floor of Central City, we excluded people just passing by the building.`（2021_Choi_7991）

**预处理/停留点阈值**（具体到数字+依据）：
- `In this study, we firstly calculated the velocity between two consecutive points and eliminate the outliers whose velocity exceeded 50 m/s as drift points. Then, spatio-temporal adjacent points were then aggregated into grids based on a spatial distance threshold of 500 m and a temporal interval threshold of 30 min.`（Zheng2026）
- `If two sequential points are in the same place (<500 m) and the time difference is greater than half an hour, that place is considered a stay point.`（2022_Gao_7829）
- 阈值要引文献或行为理由：`...short-time stays are likely to be interference or noise (e.g., refuelling or traffic congestion), thus have been filtered out in similar studies by setting thresholds of 10 min, 30 min, or 1 h (Jiang et al., 2013; Tu et al., 2017; Yu et al., 2020).`（2022_Gao_7829）

**职住识别规则**（时间窗+时长阈值，可复现——你的 K-means 前处理直接对应）：
- `We specifically selected the location of residence for each user were identified as the most frequent location during the nighttime (from 21:00 to 8:00 of the following day), and the workplace was likewise identified during the day (from 9:00 to 17:00).`（2024_Chen_5974）
- `Home place is identified as the location where an individual stays most from 0 a.m. to 7 a.m., with a minimum duration threshold of 4 h; and work place is identified as the location where an individual stays most from 9 a.m. to 18 p.m., with a minimum stay of 5 h.`（2023_Shi_7664）
- `In the individual's daily trajectory, each location (grid) with the longest cumulative dwell time in the 22:00 to 6:00 time period is defined as candidate home, and that with the longest cumulative dwell time during 09:00–17:00 as the candidate workplace.`（Zheng2026）
- 多准则操作化：`In this study, the overtime workers identification process is performed based on three criteria: 1) ... 2) ... 3) ...`（Zheng2026，全文见 3.1）

**匿名与伦理**（手机信令必备）：
- `all information was aggregated prior to receipt. Specifically, time-stay patterns were provided at an aggregated level rather than individual travel behaviors, and all user IDs were anonymized to ensure privacy protection.`（2025_Zhou_8137）
- `To protect data privacy and avoid the reverse deduction of individual data, we aggregate the data at a neighbourhood scale ...`（2023_Qiao_5967）
- `The mobile data here is encrypted, which means that this research will not involve the user's personal information.`（Xiao2020）
- `In our case study, the transformation is required by the data provider for the issues of data security and privacy protection. Specifically, we spatially transfer original working/residential places into urban cells with a length/width of 100 m.`（2024_Zhang_7449）
- `To prevent residual disclosure, we rounded the sample sizes to the nearest 100, per RDC requirements.`（Kim2024，普查受限数据）

### 2.4 数据局限与应对（真实论文怎么声明并回应）

| 局限类型 | 声明句式（真实） | 回应方式（真实） |
|---|---|---|
| 采样偏差 | `Due to the web-based nature of the survey, the sample is biased towards better educated and young individuals.`（2016_Wang_8603） | 不回避，直接写明偏向 |
| 非代表性 | `the complete dataset is not necessarily representative of the entire population residing in and/or commuting to Madrid, which does not affect the validity of the sample for the type of analysis conducted in this research (see Solon et al., 2015; Wooldridge, 1999).`（2024_Aguilera-García_3062） | 用方法论文献论证"该分析不需要代表性" |
| 精度局限 | `The accuracy increase makes it possible to investigate urban segregation at a 100-metre scale, despite we admit it will still have some biases.`（2024_Zhang_7449） | 承认偏差，强调尺度收益 |
| 覆盖不足（排除≠零值） | `These exclusions represent data non-coverage (i.e., parks not indexed in the SafeGraph database) rather than an observation of zero visits, as SafeGraph only reports visitation for locations included in its master POI list.`（2026_Won_8833） | 区分"无数据"与"零观测" |
| 分类缺陷的机制解释 | `The classification relies on cell-tower signals and the dominant function of the destination building, so "shopping" includes only trips to large-scale retail facilities such as department stores and premium outlets, while smaller everyday activities such as buying groceries or visiting convenience stores are systematically grouped under "other."`（2026_Lee_7708） | 解释系统偏差的方向及对结论的影响 |
| 理想数据不可得 | `Ideally, activity space would be best characterized by ... However, in reality, it is very difficult, if not impossible to get such information ... Thus, like other studies ..., we rely on the population census data ...`（2016_Wang_8603） | 理想—现实—文献惯例三步 |
| 主动列局限 | `We acknowledge several limitations in our analysis. First, our measures of car ownership are imperfect.`（Kim2024） | 局限放方法节而非讨论节 |
| 数据时段可比性 | `As neither of the two datasets is inclusive of public holidays, it is reasonable to assume that activity patterns are similar across both collection periods for a given data type (i.e., SCD or PRD), which ensures a valid comparison of the two datasets.`（2022_Gao_7829） | 用假设+理由消解可比性质疑 |

### 2.5 数据节与区域节/方法节的衔接（无独立数据节时谁承担数据功能）

| 你的情况 | 数据功能由谁承担 | 真实例证 |
|---|---|---|
| 全国/多城样本，区域只是情境 | 数据节第一段承担"背景→可得性→规模论证"；区域节不设 | 2014_VanHolm_7957、Palm2025、Kim2024 |
| 区域与数据不可分 | 合并节：Study area and data source | Zheng2026（3.1）、Ta2021（3.1 Survey area）、2014_Wu_6549（Data and study area） |
| 方法先行、数据殿后 | 数据放在方法章最后 | 2019_Zhang_7717（4.1 Methods → 4.5 Data） |
| 测量框架先行、数据后供 | 先立框架再供数据 | 2016_Wang_8603（Section 3 框架 → Section 4 数据） |
| 数据源复杂、细节多 | 正文给主线，明细外置 Supplementary | 2023_Qiao_5967（"The description of data sources and access date see Appendix Table A1 in Supplementary document"） |
| 数据源描述与"怎么用"分离 | 数据源放第 3 章，方法章只讲怎么用 | 2026_Wang_8274 |

---

## 三、句式与例子（真实提取，按数据源类型取用，附出处）

### 3.1 手机信令/移动定位（重点——你的论文，例句最全）

**来源机构与权威性**：
- `We obtained the data from <供应商>, the largest <类型> operator in <国家>.`（2024_Zhang_7449："We obtained the data from China Mobile, the largest mobile communication operator in China."）
- `As of <时间>, the market shares (users) of <N> firms were <A>% (<数量> users), <B>% (<数量> users), and <C>% (<数量> users), respectively (<来源>). Therefore, using the data from <供应商> can well reveal the population patterns.`（2024_Zhang_7449：58% / 23% / 19%）
- `The data are sourced from <机构>, one of the largest <类型> in <国家>, which holds approximately <份额> of the market share in the study area.`（2026_Liu_8807："The data are sourced from China Unicom, one of the largest telecommunications providers in China, which holds approximately 20% of the market share in the study area."）
- `The data utilized in this study consisted of <数据类型> provided by <供应商>, a <描述> with a market share of <X>% in <国家> (<来源>).`（Gao2025：中国移动江苏 53.7%）
- `<机构> accounts for approximately <份额> of mobile subscribers in <国家> and is a certified data provider for <政府>. This data has been widely used in previous studies ...`（2026_Lee_7708："KT accounts for approximately 21 % of mobile subscribers in South Korea and is a certified data provider for the Seoul Metropolitan Government."）
- 中文说明：供应商一句+份额一句，功能是让审稿人判断"覆盖谁、偏谁"；份额必须给出处。

**数据机制/能力**：
- `Unlike <旧数据>, which <旧数据机制>, the data applied in this study <新数据机制>.` + `Therefore, this dataset shows advantages over <旧数据> in terms of <优点1> and <优点2>.`（2021_Cao_8109："Unlike the data drawn from call detail records (CDRs), which are triggered only upon receipt of communication events (such as phone calls and text messages), the data applied in this study were recorded every hour."）
- `<数据> are recorded passively by <主体>, which means that <性质>.`（Xiao2020："Mobile phone signalling data are recorded passively by the telecom operator."）
- `This study uses <数据> to <动词1> individuals' movements, <动词2> <对象>, and <动词3> <对象>.`（2026_Liu_8807："This study uses mobile signalling data to track individuals' movements, identify transportation modes, and measure residents' mobility."）
- `The dataset is large in scale, widely covered, and high in spatial resolution, making it well suited to capture <行为>.`（2026_Wang_8274）
- 中文说明：能力句要把"数据属性"翻译成"能回答什么研究问题"。

**时间窗与规模**：
- `We adopted a <时段> dataset of <数据> for <时间窗>, when <情境理由>.`（2024_Chen_5974）
- `This period contains no major urban holidays and falls outside both the winter and summer vacation periods, thereby reducing <干扰> and enabling a more accurate capture of <日常行为>.`（2026_Wang_8274）
- `It was sourced from <来源>, encompassing the period from <起> to <止>. This dataset includes information on <人数>, approximately <比例> of <总体>.`（2025_Zhou_8137："...approximately 20 % of Shanghai's total population."）
- `Given the lack of significant demographic bias among these users, the dataset is considered a representative random sample of <总体>.`（2025_Zhou_8137）
- `We collected <数据> from over <数量> <单位>, which accounts for roughly <比例> of the population, from <起> to <止>.`（2023_Lu_8074）
- `A total of <N1> users meeting the criteria for the <样本类型> were extracted, with an average of <x> records per user. After filtering, the final dataset contained <N2> unique users, generating <M> records over <D> study days.`（Gao2025）
- 中文说明：样本量紧跟"占人口比例"或"代表总体"结论；链式筛选（N1→N2）让"最终样本代表谁"可追溯。

**职住/停留识别**：
- `In the individual's daily trajectory, each location (grid) with the longest cumulative dwell time in <时段1> is defined as candidate <位置1>, and that with the longest cumulative dwell time during <时段2> as the candidate <位置2>.`（Zheng2026）
- `Home place is identified as the location where an individual stays most from <起> to <止>, with a minimum duration threshold of <x> h; and work place is identified as the location where an individual stays most from <起> to <止>, with a minimum stay of <y> h.`（2023_Shi_7664）
- `In this study, the <对象> identification process is performed based on <N> criteria: 1) <准则1>; 2) <准则2>; 3) <准则3>.`（Zheng2026：稳定职住+距离>1 km / 年龄 20–59 / 周工时>40 h）
- `Following common practices in processing mobile phone records, the operator identified each user's dominant nighttime (<时段>) and daytime (<时段>) locations during the study period as proxies for home and workplace locations, respectively (<引用>).`（2026_Zhuang_8043）
- 中文说明：识别规则必须写到"几点到几点+最少停留多久+候选/确认两阶段"，这是审稿人验证可复现性的第一站。

**网格化/空间单元**：
- `This data is organized in a <格式> with a resolution of <分辨率> and includes key variables such as <变量列表>.`（2025_Chen_7515："...organized in a grid format with a resolution of 250 × 250 meters..."）
- `For one, the evenly distributed <网格> can reduce the modifiable area unit problem (MAUP). For another, the grid is smaller than <上级单元>, thereby facilitating subsequent analysis, especially <特定分析>.`（2023_Shi_7664）
- `In our case study, the transformation is required by the data provider for the issues of data security and privacy protection. Specifically, we spatially transfer original <位置> into urban cells with a length/width of <尺度>.`（2024_Zhang_7449：100 m）
- `In this study, we decomposed the <数据> into <网格> that matched the spatial resolution of the <主数据>.`（2024_Chen_5974：250 m）
- 中文说明：网格选择给"数据提供方要求/MAUP/匹配主数据"之一即可；网格=分析单元，必须与后文 results 一致。

**匿名与验证**：
- `all information was aggregated prior to receipt. ... all user IDs were anonymized to ensure privacy protection.`（2025_Zhou_8137）
- `To protect data privacy and avoid the reverse deduction of individual data, we aggregate the data at <尺度>.`（2023_Qiao_5967）
- `The analysis revealed a high correlation coefficient of <r> (<显著性>) between the <数据> and <官方统计>, affirming the representativeness of the identified user information.`（2023_Liu_8071：0.776, p < 0.01）
- `<组A> account for <X>% of the dataset, while <组B> comprise <Y>%, which closely approximates the <分布> reported in <权威统计> ... This correspondence suggests that the sample exhibits a distribution that is broadly consistent with the actual population.`（2026_Fan_8053：53.50%/46.50% vs 七普 51.28%/48.72%）
- 中文说明：验证句是"信令识别结果"可信度的关键证据——有官方统计可对拍（人口/性别/职住分布）就一定要报。

### 3.2 调查问卷/活动日志

- `A <调查类型> was conducted between <时间段> in <案例地> and provided the data for comparing <两组>.`（2016_Wang_8603）
- `Respondents were recruited with the assistance of <抽样工具>, which <抽样机制>.`（2016_Wang_8603："...a CATI (Computer Assisted Telephone Interviewing) system, which randomly drew and dialed numbers from a telephone database containing about 300,000 fixed local lines."）
- `In <月份年份>, <N> <单位> were distributed via <渠道> of which <N2> were valid responses (a <P> % valid response rate). After data cleaning, the information obtained from <N3> <样本> was used in this study.`（2022_Hu_7955）
- `Respondents were proportionally selected from <N> <块> using a multi-stage probability proportional to population size sampling method, considering the <结构> of each <块>.`（2021_Lu_5979）
- `Due to <限制>, the sample is biased towards <人群>.`（2016_Wang_8603）
- 中文说明：问卷类一定要走"抽样机制→链式损耗→偏差声明"三步；抽样机制名字要准确（PPS/CATI/分层随机）。

### 3.3 行政登记/普查

- `<机构> has conducted <N> surveys since <年份> and these form the dominant source of data for analyzing <主题>.`（2014_Wu_6549）
- `We use data from <数据库>, which includes <覆盖范围>, and which provides researchers the opportunity to <能力>.`（2016_Tammaru_8475："...the longitudinal Swedish Population Register, which includes the whole Swedish population..."）
- `<来源A> only provides data on <X>, while <来源B> only on <Y>. In order to estimate <Z>, we employ data from <补充来源>.`（2017__6166）
- `The survey adopted <抽样方法> and achieved <N> valid interviews, of which <A>% are <组1> and <B>% are <组2>, a split very close to the one given by the population census.`（2017__6166）
- `To prevent residual disclosure, we rounded the sample sizes to the nearest 100, per <机构> requirements.`（Kim2024）
- 中文说明：普查/登记类靠"权威性+全人口覆盖+细粒度"立信；多数据源互补时写清各自的缺口。

### 3.4 GPS/出行日志

- `The <数据集> used in this research were collected in <地点>, in <年份>. The participants were asked to use a <设备> <时长> for a consecutive <N>-day period.`（2019_Zhang_7717："...GPS tracking device 24 h a day for a consecutive 7-day period."）
- `Primary data for this project is from the <年份> <调查名>, a large sample <调查类型> primarily designed to develop estimates of <用途>.`（AllenFarber2020）
- `We subset our sample to <筛选标准>. This results in a sample size of n = <样本量> individuals pertaining to a population of N = <总体量>.`（AllenFarber2020："n = 247,453 individuals pertaining to a population of N = 5,345,419."）
- `<数据名> is a large-scale <类型> survey data that covers <规模>, carried out by <机构清单>.`（2024_Sun_7832：160,000 户 / 310,000 人，东京）
- 中文说明：GPS/出行日志的样本代表性靠"权威调查名+筛选链+总体对照"；日记内容（字段）要列出与后文指标对应的变量。

### 3.5 POI/多源融合

- `Data for this study come from <数量> main sources. The first source is <数据1> ... The second data source is <数据2> ...`（2020_Wang_8696）
- `In this study, <N> types of data were used: <列表> (Table <n>).`（2022_Li_7394）
- `Our study included <N> main datasets: <数据1>, <数据2>, <数据3>, and <数据4>.`（2023_Liu_8071）
- `This study utilizes a variety of multi-source geographic datasets to assess <指标> from a fine-grained urban perspective. The data sources include <数据列表>. More details are provided in the <Table>.`（2026_He_8940）
- `To ensure spatial consistency, all datasets were <统一处理> and clipped to the study area.`（2026_Fan_8053 骨架）
- 中文说明：多源融合的秩序是"总起→逐源→对齐→表格"；每种数据都要回答"来源+时间+规模+用途"四问。

---

## 四、陷阱与红线（真实审稿教训）

1. **❌ 数据来源不透明**：只写"手机信令数据"不交代运营商/供应商、市场份额、获取途径。真实论文：供应商+份额+出处一步到位（2024_Zhang_7449、Gao2025、2026_Liu_8807、2026_Lee_7708）。
2. **❌ 时间窗无理由**：报"2019 年 12 月"不解释为什么。真实论文给"COVID 前/无假期/气候适宜/避开旅游季"（2024_Chen_5974、2026_Wang_8274、2026_He_8940、2026_Li_8817）。
3. **❌ 识别规则不可复现**：职住识别只写"识别出居住地"不写时间窗和阈值。真实论文写到"几点到几点+最少几小时"（2023_Shi_7664、2024_Chen_5974、Zheng2026）。
4. **❌ 清洗规则说不清**：报"清洗后 N"不报"从多少到多少、为什么排除"。真实论文给链式损耗（2022_Hu_7955、2016_Wang_8603、2021_Choi_7991）或 "Based on these exclusions..." 句。
5. **❌ 代表性声明与后文分析不一致**：说"代表全体人口"却只分析筛选后子样本。真实论文的代表性声明紧跟最终样本（Gao2025：先 5,058,669 常住→再 599,052 固定职业者，最后才说"6.3% 南京总人口"）。
6. **❌ 隐私伦理缺失**：手机信令不写匿名化/聚合/去标识化。真实论文必备（2025_Zhou_8137、2023_Qiao_5967、Xiao2020、2024_Zhang_7449、Kim2024）。
7. **❌ 阈值无依据**：500 m/30 min 不给文献或行为理由。真实论文引"类似研究阈值 10/30/60 min"（2022_Gao_7829）或官方标准（Zheng2026 的 WHO/通勤监测报告、2026_Wang_8274 的上海规划标准）。
8. **❌ 信令识别不与官方对拍**：识别出的职住/人口分布不与普查或官方统计验证。真实论文给 r=0.776（2023_Liu_8071）、r=0.87（2026_Ding_7711）、性别占比对照（2026_Fan_8053）。
9. **❌ 多源数据不交代空间对齐**：多源融合不写投影/裁剪/网格匹配。真实论文有统一处理句（2026_Fan_8053）与 "matched the spatial resolution" 句（2024_Chen_5974）。
10. **❌ 局限只报不回应**：偏差声明必须接"对分析的影响"或"为什么仍可用"（2016_Wang_8603、2024_Aguilera-García_3062、2026_Won_8833）。
11. **❌ 元统计堆砌**：不写"数十篇里 34 篇…"这种话（本指南仅供写作参考，论文正文绝不出现元统计）。

---

## 五、自查清单（机械可执行）

□ 数据是什么：来源机构+份额/权威性+记录机制+格式/精度，四要素齐全？
□ 为什么用这批数据：有"能力句"把数据属性接到研究问题（追踪粒度/时间分辨率/字段）？
□ 时间窗给了选择理由（COVID 前后/假期/气候/观测期）？
□ 清洗/筛选规则可复现：阈值、排除标准、链式损耗（从多少到多少、为什么排除）？
□ 职住/停留识别具体到时间窗+时长阈值（几点到几点、最少几小时）？
□ 样本量报了"最终样本代表谁"：占人口比例 / 与普查对照 / 验证统计量，至少一条？
□ 空间单元（网格/TAZ/社区）给了选择理由（MAUP/匹配主数据精度/隐私要求）？
□ 匿名与伦理交代了（聚合、匿名化、去标识化、四舍五入）？
□ 多源数据交代了空间对齐（投影/裁剪/网格匹配）？
□ 数据局限声明了并回应了（偏差方向/对结论影响/为何仍可用）？
□ 无独立数据节时，明确数据功能由哪一节承担（区域节/方法节/研究设计）？
□ 阈值有依据（文献/官方标准/行为理由），不是裸数字？
□ 全部摘录句可回库核实（Zotero），引文与原文一致？

---

> 与 [05-studyarea.md](05-studyarea.md)（区域节：无独立节时区域功能如何移交——本文 2.5 是其数据侧镜像）、[04-methods.md](04-methods.md)（方法节：数据节只管"数据是什么/代表谁/局限"，方法节管"怎么分析"）配合使用。
> 语料中间产物：cities_section_lib/sec_E.md（数十篇数据与方法节精提取）、cities_ds_parse/<tag>.md（逐篇全章节精提取）。
