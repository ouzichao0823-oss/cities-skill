# 连接你的文献库

> 本 Skill 有两块本地配置：**大模型**（本地 Ollama 粗活 + 可选 API 精查）和**文献库**（本文）。大模型配置见 [`model-setup.md`](model-setup.md)，可一键完成：仓库根目录运行 `install.sh`（macOS/Linux）或 `install.ps1`（Windows）。

本 Skill 的核心能力之一是**基于你本地的 Zotero 论文库进行竞品分析和文献定位**。以下是如何设置。

---

## 1. 安装 Zotero

如果还没有，从 [zotero.org](https://www.zotero.org/) 下载并安装 Zotero。

## 2. 建立你的城市研究论文库

### 推荐期刊（城市研究 Q1）

以下期刊覆盖了城市研究的主要方向。在 Zotero 中订阅这些期刊的 RSS 或定期导入：

| 期刊 | 领域 | 出版社 |
|------|------|--------|
| Cities | 城市综合（政策、治理、规划） | Elsevier |
| Urban Studies | 城市综合（理论、政策） | SAGE |
| Journal of Transport Geography | 交通地理 | Elsevier |
| Transportation Research Part D | 交通与环境 | Elsevier |
| Travel Behaviour and Society | 出行行为 | Elsevier |
| Applied Geography | 应用地理 | Elsevier |
| Environment and Planning A/B/C/D | 规划理论、经济、治理 | SAGE |
| Urban Geography | 城市地理 | Taylor & Francis |
| Habitat International | 人居环境 | Elsevier |
| Transport Policy | 交通政策 | Elsevier |
| Nature Cities | 顶刊（综合） | Springer Nature |
| Annals of the AAG | 地理学 | Taylor & Francis |
| Sustainable Cities and Society | 可持续城市 | Elsevier |
| Landscape and Urban Planning | 景观规划 | Elsevier |
| Land Use Policy | 土地政策 | Elsevier |
| Housing Studies | 住房 | Taylor & Francis |
| Journal of Urban Health | 城市健康 | Springer |
| Computers, Environment and Urban Systems | 计算城市 | Elsevier |

### 导入方式

1. **从期刊网站导入**：在期刊主页找到最新论文列表 → 使用 Zotero 浏览器插件一键导入
2. **从数据库批量导入**：Web of Science / Scopus 检索 → 导出 RIS → 导入 Zotero
3. **手动添加**：Zotero → New Item → 选择类型 → 填写元数据

### 组织建议

使用 Zotero 的 Collection 功能按以下维度组织：
- 按期刊（方便定位期刊风格）
- 按议题（不平等、交通、环境、住房、健康、韧性...）
- 按方法（DID、空间回归、ML、活动空间分析...）
- 按数据（手机信令、POI、街景、遥感、问卷...）

多层嵌套的 Collection 结构可以让你在竞品分析时快速定位"用某方法+某数据做某议题"的论文集群。

---

## 3. 找到 Zotero 数据目录

1. 打开 Zotero → Edit → Preferences → Advanced → Files and Folders
2. 找到 "Data Directory Location" → 复制路径
3. 记下这个路径——Skill 需要它来查询你的论文库

路径通常类似:
- **Windows**: `C:\Users\[your-name]\Zotero\`
- **macOS**: `/Users/[your-name]/Zotero/`
- **Linux**: `/home/[your-name]/Zotero/`

---

## 4. 准备查询

Zotero 运行时**锁定了** `zotero.sqlite` 文件。查询前需要复制一份：

### 手动复制
```bash
cp /path/to/Zotero/zotero.sqlite /path/to/Zotero/zotero_copy.sqlite
```

### 或用 Python 自动复制
```python
import sqlite3, shutil, os

zotero_dir = '/path/to/your/Zotero'
src = os.path.join(zotero_dir, 'zotero.sqlite')
dst = os.path.join(zotero_dir, 'zotero_copy.sqlite')
shutil.copy2(src, dst)

conn = sqlite3.connect(dst)
# ... 执行查询 ...
conn.close()
```

---

## 5. 在 Claude Code 中配置

首次使用本 Skill 时，告知 Claude Code 你的 Zotero 数据目录路径。之后 Skill 会记住并使用它。

也可以创建 `corpus/zotero-path.txt`（该文件已在 .gitignore 中排除），写入你的 Zotero 路径。Skill 在查询前会读取它。

```
echo "/path/to/your/Zotero" > corpus/zotero-path.txt
```

---

## 6. 竞品分析流程

一旦 Zotero 连接好，Skill 可以做：

1. **竞品扫描**: "搜索我的 Zotero 库中所有关于[某议题]的论文" → 按逻辑链逐环检索
2. **竞品矩阵**: 对比你的研究和最接近的 3-5 篇论文——在哪一环不同？
3. **Gap 判断**: 你的组合是否填补了文献中的空白？
4. **引用验证**: 写作中引用的每篇论文是否在 Zotero 中真实存在？

---

## 7. 没有 Zotero 库？

即使没有本地 Zotero 库，Skill 的其他功能（实验设计、宪法螺旋、战略简报、期刊风格）仍然可用。

对于文献检索和引用验证，Skill 会桥接到 `nature-academic-search`——跨 PubMed、CrossRef、arXiv 的在线检索。

但**本地 Zotero 库的优势**是：
- 离线可用，不需要网络
- 你可以按自己的研究方向精细组织
- 引用验证是即时的（不存在网络检索的延迟和偏差）
- 你是自己文献库的策展人——库里有什么、没有什么，本身就是研究方向的信息

建议：从小开始。导入 50-100 篇与你最相关的论文 → 体验流程 → 逐步扩展。

---

## 8. 隐私说明

- 你的 Zotero 路径和库内容**不会**被上传或分享
- `zotero-path.txt` 应加入 `.gitignore`
- Skill 只在本地查询你的 `zotero.sqlite`
- GitHub 版本中已移除所有个人路径和库信息
