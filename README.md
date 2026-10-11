# Onze villa in Krabi
Statische site (GitHub Pages). De pagina leest `data/villas.json`; alleen dat bestand hoeft dagelijks overschreven te worden, daarna `./update.sh`.

## Schema `data/villas.json`
Top-level:
- `updated_at` (string, ISO 8601 met tijdzone) – getoond als "Laatst bijgewerkt"
- `eur_thb` (number) – wisselkoers 1 EUR = x THB, gebruikt als één van beide prijzen ontbreekt
- `message` (string|null) – tekst als `villas` leeg is
- `villas` (array) van objecten:
  - `id` (string, uniek, stabiel) · `name` (string) · `area` (string, bv. "Ao Nang")
  - `price_thb` / `price_eur` (number|null, per maand)
  - `bedrooms`, `bathrooms` (number|null)
  - `private_pool` (bool)
  - `six_month_ok` (bool) – 6-maandscontract mogelijk · `six_month_price_thb` (number|null) – maandprijs bij 6 maanden
  - `internet` (string)
  - `notes` (string, Nederlands)
  - `type`: `huis` | `resort` (filter op de site; ontbreekt = huis)
  - `status`: `nieuw` | `shortlist` | `bezichtigen` | `afgevallen`
  - `url` (string, echte advertentie-URL) · `photo_url` (string|null) · `source` (string, site-naam)
  - `score` (0–100, sortering "Beste match") · `top3` (bool, max 3 op true)

Regels: nooit listings/prijzen/URLs verzinnen; geen privégegevens van de familie (site is publiek).
