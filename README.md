# 🎧 audio-presets

Personal EQ preset collection for **EARS** (Chrome) and **FXSound** (Windows) — version-controlled so they're never lost.

---

## Structure

```
audio-presets/
├── ears/
│   ├── presets/Presets.json     # All EARS presets
│   ├── concat.js                # Merge presets → one-liner JSON
│   └── package.json
├── fxsound/
│   └── presets/
│       ├── Pop.fac
│       ├── rap.fac
│       ├── Trapmetal.fac
│       └── lofi.fac
├── preset-map.json              # Cross-reference: EARS ↔ FXSound by genre
├── sync.sh                      # Pull + push helper script
└── README.md
```

---

## EARS presets

> Tuned for **bookshelf speakers + 6th order bandpass subwoofer.** Sub bands (7–37 Hz) are cut in every preset — the sub handles that range. Punch is centred at 229 Hz. Mids (879 Hz–3.1 kHz) are lifted to balance against the sub's weight.

| Preset | Character | Best for |
|---|---|---|
| Modern Country | Bright, punchy, vocal-forward | Morgan Wallen, Luke Combs, Zach Bryan |
| Hip Hop | Punchy upper-bass, clean mids | Kendrick, Drake, general rap |
| Hip Hop (Trap) | Heavy punch, crisp hi-hats | Travis Scott, Future, 21 Savage |
| R&B | Warm low-end, smooth presence | The Weeknd, SZA, Frank Ocean |
| R&B (Smooth) | Silky, laid-back, rich mids | Neo-soul, slow jams, late night |
| Lo-Fi / Chill | Warm, vintage, rolled-off highs | Study sessions, background listening |
| Electronic / EDM | Sub punch, scooped mids, airy highs | House, techno, festival sets |
| Podcast / Spoken Word | Voice clarity, cut rumble | Podcasts, lectures, commentary |
| Wa_Rock | Original exported rock preset | Classic & modern rock |

### EQ band reference

| Band | Frequency | Zone |
|---|---|---|
| 1 | ~7 Hz | Sub-bass — deferred to sub |
| 2 | ~37 Hz | Deep bass — deferred to sub |
| 3 | ~112 Hz | Bass body / sub handoff |
| 4 | ~229 Hz | Punch zone — kick attack, 808 thwack |
| 5 | ~426 Hz | Low-mids — slight cut to clean mud |
| 6 | ~879 Hz | Presence / upper-mids |
| 7 | ~1.7 kHz | Vocal attack, guitar bite |
| 8 | ~3.1 kHz | Detail, snare crack |
| 9 | ~7.9 kHz | Brightness |
| 10 | ~12.7 kHz | Air |
| 11 | ~20.2 kHz | Ultra-air |

All Q values are set to **0.7071** (standard Butterworth, wide & musical).

### How to load

1. Install [Node.js](https://nodejs.org/), then run:
   ```bash
   cd ears
   npm run concat
   ```
2. Copy the one-liner JSON output.
3. Open Chrome DevTools (`F12`) on any tab.
4. Go to **Application → Local Storage → `chrome-extension://nfdfiepdkbnoanddpianalelglmfooik`**
5. Find or create the `PRESETS` key and paste the JSON as its value.
6. Reload the extension — presets appear in the dropdown.

→ [Install EARS](https://chrome.google.com/webstore/detail/ears-bass-boost-eq-any-au/nfdfiepdkbnoanddpianalelglmfooik)

---

## FXSound presets

| File | Genre | Character |
|---|---|---|
| Pop.fac | Pop | Balanced vocals and synth-pop clarity |
| rap.fac | Rap / Hip Hop | Vocal mids and punchy bass |
| Trapmetal.fac | Trap Metal | Aggressive lows and highs |
| lofi.fac | Lo-Fi / Chill | Warm analog feel, rolled-off highs |

### How to load

1. Open **FXSound**
2. Go to `Settings → Presets → Import`
3. Select a `.fac` file from `fxsound/presets/`

→ [Download FXSound](https://www.fxsound.com/)

---

## Cross-reference

`preset-map.json` maps each genre to its closest EARS and FXSound equivalent with notes on tuning differences.

---

## Sync to GitHub

```bash
# first time only
chmod +x sync.sh

# pull → commit → push
./sync.sh
```

Or manually:

```bash
git pull origin main
git add -A
git commit -m "update presets"
git push
```

---

## Contributing

PRs welcome. Add FXSound presets as `.fac` files under `fxsound/presets/` and EARS presets as entries in `ears/presets/Presets.json`. Update `preset-map.json` if there is a cross-tool equivalent.

---

## License

MIT — use, fork, modify freely.
FXSound presets sourced from [Efeckc17/fxsound-presets](https://github.com/Efeckc17/fxsound-presets), also MIT licensed.
