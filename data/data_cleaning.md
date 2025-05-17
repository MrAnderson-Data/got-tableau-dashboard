# 🧼 Data Cleaning & Preparation

This document outlines the key steps taken to clean, structure, and prepare the data for analysis and visualization in the Game of Thrones Kill Dashboard project.

---

## 📁 Datasets Involved

- `got_kills.csv` — Raw kill data including killer, victim, method, location, etc.
- `got_characters.csv` — Character metadata including house, family, status, etc.
- `got_locations.csv` — Geographic and fictional context data for mapping and joins.

---

## 🧹 Cleaning Steps

### 1. Image URL Cleanup
- Removed `[img]...[/img]` tags using SUBSTITUTE.
- Corrected GitHub URLs to remove `refs/heads/` and follow proper raw file format.

### 2. Kill Method Standardization
- Normalized inconsistent kill method entries (e.g., "Ice sword" vs "ice sword").
- Grouped or merged similar methods for better analysis (e.g., "falling", "bare-hands”)

### 3. Location Mapping
- Matched `Location` from kill data to `Location_ID` from `got_locations.csv` using `VLOOKUP`.
- Trimmed and cleaned any inconsistent spelling/spacing in location names.

### 4. Character Join Prep
- Ensured all character names matched between `got_kills` and `got_characters`.
- Used consistent naming conventions (e.g., "Lannister soldier", "Bronn", "The Hound").

### 5. Placeholder Fixes
- Replaced `NotAvailable` or `None` with standard null values or blanks for consistency.
- Marked unknowns deliberately to preserve data clarity (e.g., "Unknown Location").

---

## 🧠 Additional Notes

- Data was originally sourced via manual curation, Wikipedia/API scraping, or open datasets.
- Cleaning was performed entirely in **Google Sheets** using formulas.
- Final data exported as `.csv` and used in Tableau and SQL queries.

---

## 📌 Next Steps

- Document version history of clean data.
- Consider automating future cleaning with Python/Sheets scripting if needed.

