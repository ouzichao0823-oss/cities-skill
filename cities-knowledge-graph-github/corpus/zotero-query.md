# Zotero 本地论文库查询指南

## 库概况

- **位置**: your Zotero data directory
- **数据库**: `zotero.sqlite` (locked while Zotero runs — copy it to query)
- **PDF**: `storage/{attachmentKey}/`
- **期刊论文**: depends on your library

## SQLite Schema

```
items:        itemID, itemTypeID (22=journalArticle)
itemData:     itemID, fieldID, valueID
itemDataValues: valueID, value (实际文本)
fields:       fieldID, fieldName

关键 fieldID:
  1  = title
  2  = abstractNote
  6  = date
  38 = publicationTitle (期刊名)
  59 = DOI
```

## 查询模板

### 按关键词搜索摘要

```python
import sqlite3
conn = sqlite3.connect('/path/to/your/zotero.sqlite')  # copy it first!

cursor = conn.execute('''
    SELECT DISTINCT
        (SELECT idv.value FROM itemData id2 JOIN itemDataValues idv
         ON id2.valueID=idv.valueID WHERE id2.itemID=i.itemID AND id2.fieldID=1) as title,
        (SELECT idv.value FROM itemData id2 JOIN itemDataValues idv
         ON id2.valueID=idv.valueID WHERE id2.itemID=i.itemID AND id2.fieldID=2) as abstract,
        (SELECT idv.value FROM itemData id2 JOIN itemDataValues idv
         ON id2.valueID=idv.valueID WHERE id2.itemID=i.itemID AND id2.fieldID=38) as journal,
        (SELECT idv.value FROM itemData id2 JOIN itemDataValues idv
         ON id2.valueID=idv.valueID WHERE id2.itemID=i.itemID AND id2.fieldID=6) as date
    FROM items i
    WHERE i.itemTypeID=22
    AND i.itemID IN (
        SELECT id.itemID FROM itemData id JOIN itemDataValues idv
        ON id.valueID=idv.valueID
        WHERE id.fieldID=2 AND (idv.value LIKE '%keyword1%' OR idv.value LIKE '%keyword2%')
    )
    ORDER BY date DESC
    LIMIT 30
''')
```

### 按期刊检索

```python
cursor = conn.execute('''
    SELECT ...
    WHERE i.itemTypeID=22 AND i.itemID IN (
        SELECT id.itemID FROM itemData id JOIN itemDataValues idv
        ON id.valueID=idv.valueID
        WHERE id.fieldID=38 AND idv.value LIKE '%Cities%'
    )
''')
```

### 按期刊 + 关键词检索

```python
cursor = conn.execute('''
    SELECT ...
    WHERE i.itemTypeID=22
    AND i.itemID IN (SELECT ... WHERE fieldID=38 AND value LIKE '%journal_name%')
    AND i.itemID IN (SELECT ... WHERE fieldID=2 AND (value LIKE '%word1%' OR value LIKE '%word2%'))
''')
```

## 查询策略

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

## 主要期刊覆盖（Zotero 中的论文数）

| 期刊 | 数量 | 领域 |
|------|------|------|
| Cities | 149 | 城市综合 |
| J. Transport Geography | 138 | 交通地理 |
| Transportation Research D | 95 | 交通与环境 |
| Urban Studies | 51 | 城市综合 |
| Travel Behaviour & Society | 42 | 出行行为 |
| Applied Geography | 34 | 应用地理 |
| Environment & Planning 系列 | 30 | 规划理论 |
| Urban Geography | 22 | 城市地理 |
| Habitat International | 19 | 人居环境 |
| Transport Policy | 19 | 交通政策 |
| Nature Cities | 10 | 顶刊 |
| Annals of AAG | 10 | 地理学 |

## 注意事项

- **优先查 Zotero 本地**：已有 PDF 的论文可以直接引用，无需再验证
- **补充在线检索**：Zotero 库中缺少的领域，使用 `nature-academic-search` 补充
- **校园网限制**：如无法通过 Zotero 获取某论文 PDF，优先用 WebSearch 找开放获取版本，或通过学校图书馆系统下载
- **不要在 Zotero 里搜中文关键词**：库中主要是英文论文。中文文献通过其他渠道
