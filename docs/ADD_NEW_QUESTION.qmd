## Add a new SQL question (Quarto + interactive SQL)

This repo is a **Quarto website**. Every question is a folder under `questions/` that contains an `index.qmd` plus assets (data + images). The homepage (`index.qmd`) auto-lists everything under `questions/`, so adding a new folder is enough for it to appear (assuming `draft: false`).

### 1) Pick the new question identifiers

- **Folder slug**: `questions/<slug>/` (kebab-case, typically prefixed with an incrementing number), e.g. `questions/11-my-new-topic/`.
- **Database name** (for the interactive editor): a simple identifier like `my_q11_db`.
  - This must match the class used in the interactive code block: ` ```{.sql .interactive .my_q11_db}`.

### 2) Create the folder and files

Minimum expected structure (matches the existing questions):

```text
questions/
  11-my-new-topic/
    index.qmd
    featured.png
    q11.sql            # SQLite-friendly schema + inserts for the interactive editor
    (optional) data.csv
    (optional) extra images...
```

### 3) Write `q11.sql` (the interactive dataset)

The interactive editor uses the Quarto filter `_extensions/shafayetShafee/interactive-sql`.

- It loads the SQL from `databases[].path` (typically a **raw GitHub URL** in this repo).
- The SQL should be **SQLite compatible** (because the embedded editor runs SQLite).
- Typical contents:
  - `DROP TABLE IF EXISTS ...;`
  - `CREATE TABLE ...;`
  - `INSERT INTO ... VALUES ...;`

### 4) Create `featured.png`

Each question inherits `image: featured.png` from `questions/_metadata.yml`, and most questions also set `image: featured.png` in their own YAML. Put the file next to `index.qmd`.

### 5) Create `index.qmd` using the project conventions

Every question page is `questions/<slug>/index.qmd`. It includes:

- **YAML front matter** used by the homepage listing (title/date/categories/description/image/draft)
- The `interactive-sql` filter + a `databases:` entry
- A page body with sections roughly like: data → questions → try-yourself → answers (and sometimes video)

Copy/paste template (fill in the placeholders from the Google Doc):

````markdown
---
title: "<HEBREW TITLE>"
description: |
  <1-2 lines summary shown in the listing cards>
author: ""
date: "YYYY-MM-DD"
toc: true
categories: [בסיסי] # or [מתקדם]
image: featured.png
draft: false
filters:
  - interactive-sql
databases:
  - name: <DB_NAME>   # e.g. my_q11_db (must match the interactive code fence class)
    path: "https://raw.githubusercontent.com/AmitLevinson/sql-website/main/questions/<slug>/q11.sql"
---

```{r, include = FALSE}
library(odbc)
library(DBI)

sqlconn <- dbConnect(odbc(),
                      Driver = "SQL Server",
                      Server = "localhost\\SQLEXPRESS",
                      Database = "sql-questions")
```

ברוכים הבאים לתרגיל ה-<N>!

## הדאטה

הסבר קצר על הטבלאות/השדות.

```{sql connection='sqlconn'}
-- Optional: show a small sample when rendering locally (then frozen for deploy)
-- SELECT TOP 10 * FROM <TABLE>;
```

## שאלות

### שאלה 1

<question text>

<optional examples / hints in <details> blocks>

### שאלה 2 (אופציונלי)

<question text>

## נסו בעצמכם

### אונליין

<mark>נסו בחלון טקסט למטה (SQLite):</mark>

```{.sql .interactive .<DB_NAME>}
-- EDIT THIS QUERY:
SELECT *
FROM <some_table>
LIMIT 10;
```

### נסו על המחשב שלכם (אופציונלי אבל מקובל באתר)

<details>
<summary>הצג קוד ליצירת טבלה</summary>

```{sql, eval=FALSE, attr.source='style="max-height: 250px;overflow: scroll;"', connection='sqlconn'}
-- Put a runnable CREATE TABLE + INSERT script here (often T-SQL)
```

</details>

## תשובות

### סרטון הסבר (אופציונלי)

{{< video https://youtu.be/<id> >}}

### תשובה 1

<details>
<summary>הצג פתרון</summary>

```{sql connection='sqlconn', echo=TRUE, eval=FALSE}
-- T-SQL / your dialect solution
```

</details>

```{sql connection='sqlconn', echo=FALSE}
-- Optionally: a “display” query (if you want the rendered output shown on the page)
```

```{r echo = FALSE}
dbDisconnect(sqlconn)
```
````

Notes on this template:

- The **interactive editor** is driven by `filters: [interactive-sql]` + the `databases:` list.
- The interactive SQL code fence must include both `.interactive` and `.<DB_NAME>`.
- Many solutions on the site are **T‑SQL**; the interactive editor is **SQLite**, so it’s normal to warn readers if dialect differs.

### 6) The important deployment gotcha: `_freeze`

`questions/_metadata.yml` sets `freeze: true`. Practically, this means:

- Your R/SQL chunks (e.g. the local `dbConnect()` + `{sql connection='sqlconn'}` blocks) must have their outputs **frozen** and committed, otherwise the site build/deploy would need access to your local SQL Server.

When adding a new question that includes executable chunks:

- Render locally once to generate freeze artifacts:

```bash
quarto render
```

- Commit the newly generated files under:
  - `questions/<slug>/...` (your new source files)
  - `_freeze/questions/<slug>/...` (the frozen outputs Quarto uses on deploy)

If you prefer not to rely on local execution at all, keep the question page mostly static (and only use the SQLite interactive editor + plain code blocks).

### 7) How I’ll convert your Google Doc into a new question page

When you share/confirm the content from your Google Doc, I’ll map it into:

- **Listing metadata** (YAML):
  - title, description, date, categories, draft, image
- **Dataset**:
  - translate the doc’s table specs into `q11.sql` (SQLite schema + inserts)
  - ensure names match what you use in the prompt/examples
- **Question text & structure**:
  - “הדאטה” section (context + sample rows if helpful)
  - “שאלות” section (Q1/Q2 + examples/hints)
  - “נסו בעצמכם” section (the interactive block with a starter query)
  - “תשובות” section (solution SQL, optionally video embed)

Once that’s done, we’ll render to produce `_freeze`, verify it shows up correctly on the homepage listing, and only then mark `draft: false` (or keep as draft until you’re ready).

