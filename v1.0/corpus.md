# Zotero 本地论文库

## 概览

- **位置**：`C:\Users\lenovo\Zotero\`
- **数据库**：`zotero.sqlite`（Zotero 运行时锁定 → 用 `zotero_copy.sqlite` 查询）
- **PDF 存储**：`storage/{attachmentKey}/{filename}.pdf`（~1304 个 PDF）
- **期刊论文**：~2868 篇（其中 ~852 篇来自 ~30 种 SCI Q1 城市研究期刊）

## SQLite 字段映射

```
fieldID=1  → title
fieldID=2  → abstractNote
fieldID=6  → date
fieldID=38 → publicationTitle
fieldID=59 → DOI
itemTypeID=22 → journalArticle
```

## 查询示例

```python
import sqlite3
conn = sqlite3.connect(r'C:\Users\lenovo\Zotero\zotero_copy.sqlite')

# 按期刊+关键词检索
cursor.execute('''
    SELECT DISTINCT
        (SELECT idv.value FROM itemData id2 JOIN itemDataValues idv
         ON id2.valueID=idv.valueID WHERE id2.itemID=i.itemID AND id2.fieldID=1) as title,
        (SELECT idv.value FROM itemData id2 JOIN itemDataValues idv
         ON id2.valueID=idv.valueID WHERE id2.itemID=i.itemID AND id2.fieldID=2) as abstract
    FROM items i
    WHERE i.itemTypeID=22
    AND i.itemID IN (
        SELECT id.itemID FROM itemData id JOIN itemDataValues idv
        ON id.valueID=idv.valueID
        WHERE id.fieldID=38 AND idv.value LIKE '%关键词%'
    )
    LIMIT 20
''')
```

## 主要期刊覆盖

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
| Sustainable Cities & Society | 8 | 可持续 |
| CEUS | 6 | 计算城市 |
| Land Use Policy | 6 | 土地政策 |
| 其他 Q1 | ~15 | 各细分 |
| Transportation | 181 | 交通工程 |

## 使用建议

- **找方法论文**：查询包含"methodology/framework/approach"的摘要
- **找经典论文**：按被引频率或发表日期排序
- **跨期刊比较**：同一议题在 Cities vs JTG 中的处理方式不同
- **校园网限制**：如无法访问某期刊全文，先用 Zotero 本地 PDF（已下载部分），再通过 WebSearch 找开放获取版本
