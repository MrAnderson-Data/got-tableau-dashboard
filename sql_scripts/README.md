# 🧾 SQL Scripts for the Game of Thrones Dashboard

This folder contains the SQL queries used to shape, clean, and extract insights from the Game of Thrones dataset powering the Tableau dashboard.

Each query is modular, readable, and annotated — built to support visual storytelling across character arcs, kill patterns, and location-based events.

---

## 📂 What’s Inside

### `01_kill_count_per_character.sql`
🔪 Ranks characters by total kills. Great for creating leaderboard-style charts or tracking killers by house or species.

### `02_kills_per_location.sql`
📍 Combines kill events and character deaths to find the deadliest locations in Westeros. Ideal for maps and location-based visuals.

### `03_method_rank.sql`
☠️ Counts and ranks methods of killing — from swords to poison to fire. Useful for breakdowns of how people tend to die.

### `04_kill_path_by_character.sql`
🗺️ Builds a timeline and map path of each killer’s journey across episodes. Perfect for Tableau’s path animation or character-based storytelling.

### `05_kill_path_Arya_Stark`
🗡️ Chronicles Arya Stark’s personal kill list across episodes, mapping her journey of vengeance spanning The Known World. Ideal query for tracking character arcs through kills.

---

## 🛠 How to Use

- Run directly in SQLite (or another SQL client)
- Or connect to Tableau using **Custom SQL**
- You can also create **views** inside SQLite for reuse across dashboards

---

## 📊 Data Tables Used

These scripts pull from the main project tables:
- `got_characters` — character info, deaths, species, house
- `got_kills` — all kill events with methods, locations, and timing
- `got_locations` — coordinates and context for Westeros mapping

---

Feel free to modify, remix, or build on top of these.  
If you do something cool with them — I’d love to see it 👀
