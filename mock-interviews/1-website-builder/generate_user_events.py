from __future__ import annotations

import csv
import random
from datetime import date, timedelta
from pathlib import Path

import matplotlib.pyplot as plt
import pandas as pd


ROOT = Path(__file__).resolve().parent


def choice(rng: random.Random, weights: dict[str, float]) -> str:
    keys = list(weights)
    return rng.choices(keys, weights=[weights[k] for k in keys], k=1)[0]


def sample_days(rng: random.Random, start: date, end: date, n: int, tail_boost_days: int = 0, tail_boost: float = 1.0) -> list[date]:
    days = []
    d = start
    while d <= end:
        days.append(d)
        d += timedelta(days=1)

    if tail_boost_days > 0 and tail_boost > 1.0:
        tail_start = end - timedelta(days=tail_boost_days - 1)
        weights = [tail_boost if d >= tail_start else 1.0 for d in days]
        return rng.choices(days, weights=weights, k=n)

    return rng.choices(days, k=n)


def write_csv(rows: list[dict[str, object]], path: Path) -> None:
    with path.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(
            f,
            fieldnames=["user_id", "visit_date", "created_site_date", "source", "device", "country"],
        )
        w.writeheader()
        w.writerows(rows)


def write_sqlite_seed(rows: list[dict[str, object]], path: Path) -> None:
    with path.open("w", encoding="utf-8") as f:
        f.write("-- SQLite seed for interactive-sql (Mock interview 1)\n")
        f.write("-- Creates: user_events\n\n")
        f.write("DROP TABLE IF EXISTS user_events;\n\n")
        f.write(
            "CREATE TABLE user_events (\n"
            "  user_id           INTEGER PRIMARY KEY,\n"
            "  visit_date        TEXT NOT NULL, -- ISO date: 'YYYY-MM-DD'\n"
            "  created_site_date TEXT,          -- ISO date (nullable)\n"
            "  source            TEXT NOT NULL, -- organic/email/paid_search/social\n"
            "  device            TEXT NOT NULL, -- desktop/mobile/tablet\n"
            "  country           TEXT NOT NULL  -- country code\n"
            ");\n\n"
        )
        f.write("INSERT INTO user_events (user_id, visit_date, created_site_date, source, device, country) VALUES\n")
        for i, r in enumerate(rows):
            created = r["created_site_date"]
            created_sql = f"'{created}'" if created else "NULL"
            line = f"  ({r['user_id']}, '{r['visit_date']}', {created_sql}, '{r['source']}', '{r['device']}', '{r['country']}')"
            line += ",\n" if i < len(rows) - 1 else "\n"
            f.write(line)
        f.write(";\n")


def plot_monthly(csv_path: Path, out_path: Path) -> None:
    df = pd.read_csv(csv_path, parse_dates=["visit_date", "created_site_date"])
    df["month"] = df["visit_date"].dt.to_period("M").dt.to_timestamp()

    m = df.groupby("month").agg(
        visits=("user_id", "size"),
        created_sites=("created_site_date", lambda s: s.notna().sum()),
    )
    m["conversion_rate"] = m["created_sites"] / m["visits"]

    plt.rcParams.update({"figure.facecolor": "white", "axes.facecolor": "white", "axes.grid": False})
    fig, ax = plt.subplots(figsize=(10.5, 4.2))

    x = m.index
    ax.plot(x, m["conversion_rate"], color="#d62728", linewidth=2.6, marker="o")
    ax.set_ylabel("שיעור המרה חודשי")
    ax.set_ylim(0, max(0.15, float(m["conversion_rate"].max()) * 1.6))

    ax.set_xticks(list(x))
    ax.set_xticklabels([d.strftime("%Y-%m") for d in x])
    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)
    ax.grid(False)

    fig.tight_layout()
    fig.savefig(out_path, dpi=180, bbox_inches="tight")
    plt.close(fig)


def main() -> None:
    rng = random.Random(42)

    months = [
        dict(
            start=date(2025, 10, 1),
            end=date(2025, 10, 31),
            n=45,
            conv=0.09,
            source={"organic": 0.50, "email": 0.20, "paid_search": 0.20, "social": 0.10},
            device={"desktop": 0.55, "mobile": 0.40, "tablet": 0.05},
            tail_boost_days=0,
            tail_boost=1.0,
        ),
        dict(
            start=date(2025, 11, 1),
            end=date(2025, 11, 30),
            n=45,
            conv=0.09,
            source={"organic": 0.50, "email": 0.20, "paid_search": 0.20, "social": 0.10},
            device={"desktop": 0.55, "mobile": 0.40, "tablet": 0.05},
            tail_boost_days=0,
            tail_boost=1.0,
        ),
        dict(
            start=date(2025, 12, 1),
            end=date(2025, 12, 31),
            n=45,
            conv=0.09,
            source={"organic": 0.50, "email": 0.20, "paid_search": 0.20, "social": 0.10},
            device={"desktop": 0.55, "mobile": 0.40, "tablet": 0.05},
            tail_boost_days=0,
            tail_boost=1.0,
        ),
        dict(
            start=date(2026, 1, 1),
            end=date(2026, 1, 31),
            n=165,  # 3–4x spike
            conv=0.035,  # conversion drops
            source={"organic": 0.15, "email": 0.05, "paid_search": 0.15, "social": 0.65},  # social-driven
            device={"desktop": 0.35, "mobile": 0.60, "tablet": 0.05},
            tail_boost_days=10,
            tail_boost=3.5,
        ),
    ]

    countries = {"IL": 0.55, "US": 0.15, "GB": 0.08, "DE": 0.06, "FR": 0.05, "ES": 0.04, "CA": 0.04, "AU": 0.03}

    rows: list[dict[str, object]] = []
    uid = 1

    for m in months:
        visit_days = sample_days(rng, m["start"], m["end"], m["n"], m["tail_boost_days"], m["tail_boost"])
        n_conv = round(m["n"] * m["conv"])
        conv_uids = set(rng.sample(range(uid, uid + m["n"]), k=n_conv))

        for vd in visit_days:
            created = vd if uid in conv_uids else None
            rows.append(
                {
                    "user_id": uid,
                    "visit_date": vd.isoformat(),
                    "created_site_date": created.isoformat() if created else "",
                    "source": choice(rng, m["source"]),
                    "device": choice(rng, m["device"]),
                    "country": choice(rng, countries),
                }
            )
            uid += 1

    csv_path = ROOT / "user_events.csv"
    sql_path = ROOT / "user_events_seed.sql"
    plot_path = ROOT / "conversion_funnel_plot.png"
    featured_path = ROOT / "featured.png"

    write_csv(rows, csv_path)
    write_sqlite_seed(rows, sql_path)
    plot_monthly(csv_path, plot_path)
    plot_monthly(csv_path, featured_path)

    print(f"Wrote: {csv_path}")
    print(f"Wrote: {sql_path}")
    print(f"Wrote: {plot_path}")
    print(f"Wrote: {featured_path}")


if __name__ == "__main__":
    main()

