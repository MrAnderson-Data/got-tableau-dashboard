# 🧼 Data Cleaning & Preparation

This document outlines the key steps taken to clean, structure, and prepare the data for analysis and visualization in the Game of Thrones Kill Dashboard project.

---

## 📁 Datasets Involved

- `got_kills.csv` — Raw kill data including killer, victim, method, location, etc.
- `got_characters.csv` — Character metadata including house, family, status, etc.
- `got_locations.csv` — Geographic and fictional context data for mapping and joins.

---

## 🧹 Cleaning Steps

### 1. Data Structuring
- Split raw data into separate sheets for characters, kills, and locations.
- Created `Character_ID` and `Location_ID` fields to enable reliable joins across datasets.
- Removed duplicates and standardized naming across all sheets.

### 2. Image & Visual Enhancements
- Cleaned image URLs by stripping `[img]...[/img]` tags using `SUBSTITUTE`.
- Corrected GitHub links by removing `refs/heads/` to ensure proper image rendering.
- Added custom character portraits, house shields, location art, and method icons to enrich dashboard visuals.

### 3. Kill Method Normalization
- Consolidated and standardized kill methods (e.g., "Ice sword" vs "ice sword").
- Grouped similar entries for clearer categorization (e.g., "falling", "suicide").

### 4. Location Mapping
- Mapped `Location` in kill data to `Location_ID` in `got_locations.csv` using `VLOOKUP`.
- Cleaned inconsistent spacing, casing, and spelling in place names.
- Mapped custom X/Y coordinates to each location for use on a fantasy map in Tableau.

### 5. Character & Victim Matching
- Standardized character names across datasets for accurate linking.
- Merged name variants (e.g., "Lannister soldier", "Baratheon soldier").
- Added victim entries to character data to support reverse mapping (who was killed by whom).

### 6. Lore & Metadata Enrichment
- Augmented characters and locations with lore details for immersive storytelling.
- Replaced `NotAvailable` or `None` with nulls or labeled unknowns for consistency and clarity.

---

## 🧠 Additional Notes

- Data was originally sourced via manual curation, Wikipedia/API scraping, or open datasets.
- Cleaning was performed entirely in **Google Sheets** using formulas and logical thinking.
- Final data exported as `.csv` and used in Tableau and SQL queries.

---

## 📌 Next Steps

- Document version history of clean data.

