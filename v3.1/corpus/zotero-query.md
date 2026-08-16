# Zotero 本地论文库查询指南（MCP 版）

> 本指南废弃 SQLite 直查：所有结构化查询走 Zotero 官方 MCP Server，语义查询走 ZotSeek MCP。

## 库概况

- **位置**: 你的 Zotero 数据目录（MCP Server 自动定位）
- **访问方式**: Zotero 官方 MCP Server（HTTP）
- **期刊论文 / PDF 数量**: 取决于你的库（附件在 `storage/{attachmentKey}/` 下）

> ⚠️ **禁止直接读 zotero.sqlite**。Zotero 运行时锁定主库，且 MCP Server 提供同等能力，无需绕过。

---

## MCP 端点配置

```
Zotero 官方 MCP Server:  http://127.0.0.1:<ZOTERO_MCP_PORT>/mcp        ← 元数据/搜索/读 PDF
ZotSeek 插件 MCP:        http://127.0.0.1:<ZOTSEEK_PORT>/zotseek/mcp   ← 段落级语义检索
```

> ZotSeek 默认端口通常为 **<ZOTSEEK_PORT>**，Zotero 内置 MCP Server 默认端口通常为 **<ZOTERO_MCP_PORT>**；以你本机实际探测为准。

前提条件：
1. Zotero 设置 → 高级 → 拉到最底部 → 打开 **MCP Server** 开关 → 重启 Zotero
2. Zotero 重启后验证：`claude mcp list` 应显示 `zotero-mcp` 健康
3. ZotSeek 已安装并启用 MCP Server 选项

若 `zotero-mcp` 显示 Failed，按症状排查：
- **404 on <ZOTSEEK_PORT>/mcp** → Zotero 内置 MCP Server 未启用（去 Zotero 设置打开开关）
- **502 on <ZOTERO_MCP_PORT>/mcp** → Zotero 刚重启还没就绪，等几秒重试；确认端口是 <ZOTERO_MCP_PORT> 不是 <ZOTSEEK_PORT>
- **MCP 返回 200 但 claude mcp 显示 Failed** → 用 `claude mcp add --transport http zotero-mcp http://127.0.0.1:<ZOTERO_MCP_PORT>/mcp`（必须带 `--transport http`，否则被当 stdio）

---

## Zotero MCP 工具清单（14 个只读工具）

| 工具 | 参数 | 用途 |
|------|------|------|
| `search_library` | `q`, `title`, `titleOperator`, `yearRange`, `relevanceScoring`, `sort`, `limit`, `offset` | **主入口**：检索库条目，返回附件 filePath。**无独立作者字段** |
| `get_item_details` | `itemKey`(必填) | 单条条目完整元数据（含摘要、附件、笔记、标签） |
| `get_item_abstract` | `itemKey`, `format`(json/text) | 单条摘要 |
| `get_item_fulltext` | `itemKey`, `attachments`/`notes`/`webpage`/`abstract` | 条目全文（含网页快照） |
| `get_item_pdf_content` | `itemKey`, `page` | 提取 PDF 附件文本 |
| `get_attachment_content` | `attachmentKey`, `format`(json/text) | 单个附件文本 |
| `search_fulltext` | `q`(必填), `itemKeys`, `contextLength`, `maxResults` | 全文内检索（带上下文）——**引用忠实度审核的关键工具** |
| `search_annotations` | `q`, `type`, `detailed`, `limit`, `offset` | 检索笔记/PDF 批注/高亮 |
| `get_annotation_by_id` | `annotationId`(必填) | 单条批注全文 |
| `get_annotations_batch` | `ids`(必填) | 批量取批注全文 |
| `get_collections` | `limit`, `offset` | 列出全部文献集合 |
| `search_collections` | `q`, `limit` | 按名检索集合 |
| `get_collection_details` | `collectionKey`(必填) | 集合详情 |
| `get_collection_items` | `collectionKey`(必填), `limit`, `offset` | 集合内条目 |

---

## 结构化查询（Zotero MCP）

### 按作者+年份查论文（存在性核查 / 引用审计）

`search_library` **没有独立作者字段** → 作者检索必须走 `q` 参数（匹配 title/abstract/tags）：

```
search_library(q="Hägerstrand", relevanceScoring=true, sort="relevance", limit=5)
→ 匹配到 title/abstract 含该姓的条目（含作者姓在摘要/标签中的）
```

对每条引用 `(Author, Year)`：
1. `search_library(q="{Surname}")` 或 `q="{Surname} {Year}"` 检索
2. 对命中条目用 `get_item_details(itemKey)` / `get_item_abstract(itemKey)` 读回 title / journal / year / DOI / abstractNote
3. 匹配规则：作者姓前缀匹配 + 年份 ±1 年内 → 列出候选让用户确认
4. 年份过滤也可直接用 `yearRange`（如 `"2020-2023"`）

### 按期刊检索

```
search_library(q="Journal of Transport Geography", yearRange="2020-2025")
→ 用 q 搜期刊名；MCP 支持全文字段感知（matchedFields 覆盖 title/abstractNote/tags）
```

### 按关键词检索

```
search_library(q="activity space mobile phone data")
```

### 引用忠实度审核专用流程（审核模式步骤 3-5）

当需要验证"论文真的说了这句话吗"：

```
1. get_item_details → 拿 itemKey
2. search_fulltext(q="关键论断词", itemKeys=[该itemKey], contextLength=200)
   → 直接在原文中找到论断对应的句子，前后 200 字符上下文
3. 或 get_item_pdf_content(itemKey) 读全文相关页
```

### 审计时必读字段

| 字段 | 用途 |
|------|------|
| title | 存在性判断 |
| publicationTitle | 期刊风格判断（Q1 核实） |
| date | 年份匹配 |
| DOI | 去重、在线补充 |
| abstractNote | 引用内容忠实度审核（七级分级） |
| attachments | 判断是否有本地 PDF（能否读全文） |

---

## ⚠️ 已知坑：非 ASCII 字符编码

`search_library(q="Hägerstrand")` 如果通过 **curl/GBK shell** 直接发，`ä` 会被丢字符（`H?gerstrand`，0 命中）。

**必须用 UTF-8 编码发 JSON**：
- Claude Code 内调用 MCP 工具时工具名和参数走 JSON-RPC，正常无此问题
- 若用 curl 直测，用 Python urllib（UTF-8）而非 curl；或先 `chardet` 确认
- 中文论文题目同样适用此规则

---

## 语义检索（ZotSeek MCP）

ZotSeek 支持自然语言语义检索，适合：

```
概念检索: "how does built environment affect travel behavior"
机制检索: "mechanism linking land use mix and travel mode choice"
反论点检索: "density does NOT affect social isolation"
方法检索: "latent class analysis of travel behavior from survey data"
```

粒度：段落级，精确到 PDF 页码。返回段落原文 → 直接可用于"这句话论文真的说了吗"的核查。

### ZotSeek 直连 HTTP API（无 MCP 工具时的可靠回退）

```
GET http://127.0.0.1:<ZOTSEEK_PORT>/zotseek/search?q=<URL编码查询词>
→ 200 JSON：{"results":[{itemKey, libraryKey, title, authors, year, score, source, matchedChunk, links:{select, selectHttp}}]}
```

- **POST 不支持**（"Endpoint does not support method"）；只发 GET。
- `source` 可为 `"keyword"`（无嵌入向量也可命中）；`score` 低不代表无效，按标题核对即可。
- `itemKey` 是**条目 key**（父条目），不是附件 key；父条目 storage 目录可能为空，附件在 `storage/{附件key}/`（需另查）。
- 判断"某引用是否在库"：先 ZotSeek 标题/主题词检索，命中后到 `storage/` 找附件；**不要只靠 storage 文件名检索**——附件名可能是 `main.pdf` 或 Elsevier PII 的 `.html`，无作者前缀会漏检。
- 确认附件位置可用全文缓存定位：`grep -rl "<关键词>" storage --include="*.zotero-ft-cache"` 列出含该文的附件目录，再列目录看实际附件名。
- **凡判定 UNVERIFIABLE 前必须先走 ZotSeek 标题检索**。

---

## 精读（本地向量检索 / 句子比对工具，可选）

如需句子级精准引用定位，可在本地搭建嵌入 + 重排管道：

- 嵌入: `nomic-embed-text`（或等价嵌入模型）
- Reranker: `BAAI/bge-reranker-v2-m3`（Cross-Encoder 精排）
- 粒度: 句子级，前后 2-3 句上下文
- 用途: 精准引用定位、"某句话在哪个论文的哪个段落"、证据链验证

> 该层为可选增强，非必需。基础检索（Zotero MCP + ZotSeek）已覆盖大多数引用核查场景。

---

## 检索策略

### 策略1: 逻辑链逐环检索

对每一个逻辑链环节搜索，找出交叉最少的论文集群：

```
对象检索: 你的研究对象用什么词描述？（如 "activity space"、"mobile signaling"）
议题检索: 你的议题关键词是什么？（如 "transport equity"、"spatial justice"）
方法检索: 你的方法在哪些论文中出现？（如 "SHAP"、"MGWR"、"DID"）
数据检索: 你的数据类型在哪些论文中被使用？（如 "mobile phone data"、"street view"）
```

### 策略2: 交叉检索找竞品

```
对象 AND 议题 → 最接近你的研究的论文集群
对象 AND 方法 → 用类似方法研究不同问题的论文
议题 AND 数据 → 用同类数据研究类似问题的论文
```

### 策略3: 排除检索

```
已有大量论文的组合 → 不是 Gap，但可以找细分空白
检索结果 < 3 篇 → 可能是 Gap 也可能是不可行的信号
检索结果 = 0 → 检查你的关键词是否太窄；确认后可能是大 Gap
```

---

## 竞品扫描工作流

```
1. ZotSeek MCP 快速扫描 → 找到相关段落级证据
2. Zotero MCP 补全 → 期刊/年份/引用链/摘要/DOI
3. 本地 LLM 提取/对比 → 结构化 JSON / 批判性分析
4. 缺漏文献 → nature-academic-search 在线检索补充
```

---

## 注意事项

- **优先查 Zotero MCP**：先按作者+年份确认论文在库中真实存在，再引用
- **ZotSeek 优先于元数据搜索**：对于"找和 X 概念相关的段落"类任务，ZotSeek 语义搜索更有效
- **元数据搜索优先于 ZotSeek**：对于"列出 2020-2025 年所有 JTG 论文"、"核实某引用是否存在"类结构化查询，走 Zotero MCP 更精确
- **search_fulltext 是忠实度审核的主武器**：七级分级里的 exact/partial/overstatement 判定，优先用它在原文找原句
- **补充在线检索**：Zotero 库中缺少的领域，使用 `nature-academic-search` 补充
- **校园网限制**：如无法通过 Zotero 获取某论文 PDF，优先用 WebSearch 找开放获取版本，或通过学校图书馆系统下载
- **不要在 Zotero 里搜中文关键词**：库中主要是英文论文。中文文献通过其他渠道
- **引用审计铁律**：写作中引用任何论文前必须验证其在 Zotero 中真实存在

---

## 文献入库方法

> Zotero MCP **只有 14 个只读工具**，不能写入。写入必须走 **connector API**（与 ZotSeek 同端口）。

### 三个写入口（connector API @ http://127.0.0.1:<ZOTSEEK_PORT>）

| 端点 | 用途 | 结果 |
|------|------|------|
| `POST /connector/saveItems` | 创建**完整元数据条目**（journalArticle/bookSection 等） | ✅ 201，元数据完整 |
| `POST /connector/saveStandaloneAttachment` | 上传 PDF → **Zotero 自动识别元数据 + 挂 PDF** | ✅ 201，返回 `{"canRecognize":true}` |
| `POST /connector/saveSnapshot` | ⚠️ **不要用**——会把条目存成 `title=DOI URL` 的空壳 | ❌ 元数据全丢 |

### 推荐流程（新增文献时）

```
1. 判断是否 OA：Unpaywall API（https://api.unpaywall.org/v2/{doi}?email=真实邮箱）
   - email 参数必须是"看起来真实"的邮箱（example.com 会被 422 拒）
2. 有 OA PDF → 下载 PDF → POST saveStandaloneAttachment
   → Zotero 自动提取 title/DOI/作者/期刊 + 挂 PDF 附件（一步到位）
3. 无 OA PDF → POST saveItems 传完整元数据（纯元数据，用户后续自行补 PDF）
```

### saveStandaloneAttachment 正确格式

```python
import urllib.request, json
pdf_data = open("paper.pdf", "rb").read()
meta = json.dumps({"sessionID":"import-xxx", "url":"https://doi.org/10.xxx/yyyy", "title":"import"}).encode('utf-8')
req = urllib.request.Request("http://127.0.0.1:<ZOTSEEK_PORT>/connector/saveStandaloneAttachment",
    data=pdf_data, method="POST",
    headers={"Content-Type":"application/pdf", "X-Metadata": meta})
# → 201 {"canRecognize":true}，等 5-10 秒后 Zotero 生成完整条目
```

### saveItems 正确格式

```python
item = {
  "itemType": "journalArticle",
  "title": "...", "date": "2025", "DOI": "10.xxx/yyyy",
  "publicationTitle": "Journal", "volume": "", "issue": "", "pages": "",
  "creators": [{"firstName":"F","lastName":"L","creatorType":"author"}],
  "language": "en", "url": "https://doi.org/10.xxx/yyyy"
}
payload = {"items":[item], "sessionID":"import-xxx"}
POST http://127.0.0.1:<ZOTSEEK_PORT>/connector/saveItems  (Content-Type: application/json)
```

### 关键坑

1. **saveSnapshot 会静默建空壳**：返回 201 但条目变成 `title=DOI URL`、itemType 空、DOI 空 → 千万别用
2. **saveStandaloneAttachment 从 PDF 提取元数据**：PDF 里嵌了 DOI 才识别完整（Frontiers/PLOS 等 OA PDF 都可以；Wiley/Elsevier 下载常 403 反爬，走 saveItems 兜底）
3. **Wiley/Lancet/Elsevier 直连下载 403**：反爬，试 `pdfdirect` 链接 + Referer header，仍失败则 saveItems
4. **Unpaywall email 参数**：`example.com` 被拒（422），用 `test@test.com` 这类通过
5. **connector 无删除端点**：误建空壳只能手动在 Zotero 界面删（搜索 `https://doi.org/` 全选删除）
6. **入库后验证**：用 `search_library({"q":doi})` + `get_item_details` 查 DOI/creators/attachments 确认完整

### 身份核实（防假引用）

CrossRef 批量解析：`https://api.crossref.org/works?query.bibliographic={标题或作者}&rows=3`
- 限流 429 → 指数退避重试（sleep 6-8s×n）
- 可交叉修正年份错误（作者/年份张冠李戴是常见假引用来源）
- 书籍/章节查 CrossRef 的 `type: book/book-chapter`
