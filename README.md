<<<<<<< HEAD
# 🎧 audio-presets

Personal EQ preset collection for two Chrome/Windows audio tools — **EARS** and **FXSound** — kept together so they're never lost and always version-controlled.

---

## Structure

```
audio-presets/
├── ears/                        # EARS Chrome extension presets
│   ├── presets/
│   │   └── Presets.json         # All EARS genre presets (JSON)
│   ├── concat.js                # Script to merge preset files → one-liner JSON
│   └── package.json
│
├── fxsound/                     # FXSound Windows app presets
│   └── presets/
│       ├── Pop.fac
│       ├── rap.fac
│       ├── Trapmetal.fac
│       └── lofi.fac
│
├── preset-map.json              # Cross-reference: genre → EARS + FXSound equivalents
=======
# 🎧 my-eq-presets

> Personal EQ preset collection for the [EARS – Bass Boost & EQ](https://chrome.google.com/webstore/detail/ears-bass-boost-eq-any-au/nfdfiepdkbnoanddpianalelglmfooik/support?hl=en) Chrome extension. Built from scratch and tuned by ear for the genres I actually listen to.

---

## About

EARS is a Chrome extension that lets you apply a parametric EQ to any audio playing in your browser — YouTube, Spotify Web, SoundCloud, you name it. It exposes 11 bands per preset with full control over frequency, gain, and Q factor.

This repo is my personal backup of presets so I never lose them. If you stumbled across this and find them useful, feel free to use or fork them.

---

## 🎵 Presets

| Preset | Vibe | Best For |
|---|---|---|
| **Modern Country** | Bright, punchy, clear | Morgan Wallen, Luke Combs, Zach Bryan |
| **Hip Hop** | Deep sub-bass, crisp highs | Kendrick, Drake, general rap |
| **Hip Hop (Trap)** | Maximum bass slam, sparkly hi-hats | Travis Scott, Future, 21 Savage |
| **R&B** | Warm low-end, smooth presence | The Weeknd, SZA, Frank Ocean |
| **R&B (Smooth)** | Silky, laid back, rich mids | Neo-soul, slow jams, late night |
| **Lo-Fi / Chill** | Warm, rolled-off highs, vintage feel | Study sessions, background listening |
| **Electronic / EDM** | Sub-bass punch, scooped mids, airy highs | House, techno, festival sets |
| **Podcast / Spoken Word** | Cut rumble, boost voice clarity | Podcasts, lectures, YouTube commentary |
| **Wa_Rock** | My original exported rock preset | Classic & modern rock |

---

## ⚙️ How to Use

### Prerequisites
- [EARS Chrome Extension](https://chrome.google.com/webstore/detail/ears-bass-boost-eq-any-au/nfdfiepdkbnoanddpianalelglmfooik/support?hl=en) installed
- [Node.js](https://nodejs.org/) installed (for running the concat script)

### Steps

1. **Clone this repo**
   ```bash
   git clone https://github.com/muryithe/my-eq-presets.git
   cd my-eq-presets
   ```

2. **Generate the combined presets JSON**
   ```bash
   npm run concat
   ```
   This reads all `.json` files in the `presets/` folder and merges them into a single one-liner JSON.

3. **Load into EARS**
   - Open Chrome DevTools (`F12`) on any tab
   - Go to **Application → Local Storage → `chrome-extension://nfdfiepdkbnoanddpianalelglmfooik`**
   - Find the `PRESETS` key (create it if it doesn't exist)
   - Paste the full JSON output from step 2 as the value
   - Reload the extension — your presets will appear in the dropdown

---

## 📁 Structure

```
my-eq-presets/
├── presets/
│   └── Presets.json      # All genre presets in one file
├── concat.js             # Script to merge presets into a single JSON
├── package.json
├── LICENSE
>>>>>>> 8da15d70ebb003b71ac400947f47ab889f20b6a8
└── README.md
```

---

<<<<<<< HEAD
## About the tools

### EARS – Bass Boost & EQ (Chrome extension)
Applies a parametric EQ to any audio playing in Chrome — YouTube, Spotify Web, SoundCloud, etc. 11 bands per preset. Presets are stored in Chrome's local storage as JSON.

→ [Install EARS](https://chrome.google.com/webstore/detail/ears-bass-boost-eq-any-au/nfdfiepdkbnoanddpianalelglmfooik)

### FXSound (Windows app)
System-wide audio enhancer with EQ, bass boost, ambience, and clarity controls. Presets are `.fac` files imported directly into the app.

→ [Download FXSound](https://www.fxsound.com/)

---

## EARS presets

| Preset | Character | Best for |
|---|---|---|
| **Modern Country** | Bright, punchy, vocal-forward | Morgan Wallen, Luke Combs, Zach Bryan |
| **Hip Hop** | Punchy upper-bass, clean mids | Kendrick, Drake, general rap |
| **Hip Hop (Trap)** | Heavy punch, crisp hi-hats | Travis Scott, Future, 21 Savage |
| **R&B** | Warm low-end, smooth presence | The Weeknd, SZA, Frank Ocean |
| **R&B (Smooth)** | Silky, laid-back, rich mids | Neo-soul, slow jams, late night |
| **Lo-Fi / Chill** | Warm, vintage, rolled-off highs | Study sessions, background listening |
| **Electronic / EDM** | Sub punch, scooped mids, airy highs | House, techno, festival sets |
| **Podcast / Spoken Word** | Voice clarity, cut rumble | Podcasts, lectures, commentary |
| **Wa_Rock** | My original exported rock preset | Classic & modern rock |

> All presets are tuned for **bookshelf speakers + a 6th order bandpass subwoofer.** The deep sub bands (7–37Hz) are cut in every preset to avoid competing with the sub's crossover. Punch lives at 229Hz. Mids are lifted at 879Hz–3.1kHz to balance against the sub's weight.

### How to load EARS presets

1. Install Node.js, then run:
   ```bash
   cd ears
   npm run concat
   ```
2. Copy the one-liner JSON output.
3. Open Chrome DevTools (`F12`) on any tab.
4. Go to **Application → Local Storage → `chrome-extension://nfdfiepdkbnoanddpianalelglmfooik`**
5. Find or create the `PRESETS` key and paste the JSON as the value.
6. Reload the extension — presets appear in the dropdown.

---

## FXSound presets

| Preset | File | Character |
|---|---|---|
| **Pop** | `Pop.fac` | Balanced vocals and modern synth-pop |
| **Rap** | `rap.fac` | Vocal mids and bass for rap clarity |
| **Trap Metal** | `Trapmetal.fac` | Aggressive lows and highs |
| **Lo-Fi** | `lofi.fac` | Warm analog chill, rolled-off highs |

### How to load FXSound presets

1. Open **FXSound**
2. Go to `Settings → Presets → Import`
3. Select the `.fac` file from `fxsound/presets/`
4. Apply and enjoy

---

## Cross-reference

`preset-map.json` maps each genre to its closest EARS and FXSound equivalent, with notes on the differences. Useful when you want the same vibe in both apps but need to know which knobs differ.

---

## EQ band reference (EARS)

| Band | Frequency | Zone |
|---|---|---|
| 1 | ~7 Hz | Sub-bass — deferred to bandpass sub |
| 2 | ~37 Hz | Deep bass — deferred to bandpass sub |
| 3 | ~112 Hz | Bass body / sub handoff |
| 4 | ~229 Hz | **Punch zone** — kick attack, 808 thwack |
| 5 | ~426 Hz | Low-mids — cut slightly to clean mud |
| 6 | ~879 Hz | Presence / upper-mids |
| 7 | ~1.7 kHz | Vocal attack, guitar bite |
| 8 | ~3.1 kHz | Detail, snare crack |
| 9 | ~7.9 kHz | Brightness |
| 10 | ~12.7 kHz | Air |
| 11 | ~20.2 kHz | Ultra-air |

=======
## 🎛️ EQ Band Reference

All presets use 11 bands at these approximate center frequencies:

| Band | Frequency | Range |
|---|---|---|
| 1 | ~7 Hz | Sub-bass (rumble) |
| 2 | ~37 Hz | Deep bass |
| 3 | ~112 Hz | Bass body |
| 4 | ~229 Hz | Low-mids (warmth) |
| 5 | ~426 Hz | Mids |
| 6 | ~879 Hz | Upper-mids (presence) |
| 7 | ~1.7 kHz | Low-treble (attack) |
| 8 | ~3.1 kHz | Treble (detail) |
| 9 | ~7.9 kHz | High treble (brightness) |
| 10 | ~12.7 kHz | Air |
| 11 | ~20.2 kHz | Ultra-air |

All Q values are set to **0.7071** (standard Butterworth, wide & musical).

>>>>>>> 8da15d70ebb003b71ac400947f47ab889f20b6a8
---

## Contributing

<<<<<<< HEAD
These are personal presets but PRs are welcome. Add FXSound presets as `.fac` files under `fxsound/presets/`, and EARS presets as entries in `ears/presets/Presets.json`. Update `preset-map.json` if there's a cross-tool equivalent.
=======
These are personal presets but PRs are welcome! If you have a great-sounding preset for a genre not covered here, add a JSON file under `presets/` and open a PR.
>>>>>>> 8da15d70ebb003b71ac400947f47ab889f20b6a8

---

## License

<<<<<<< HEAD
MIT — use, fork, modify freely.  
FXSound presets originally from [Efeckc17/fxsound-presets](https://github.com/Efeckc17/fxsound-presets), also MIT licensed.
=======
MIT — do whatever you want with these.
>>>>>>> 8da15d70ebb003b71ac400947f47ab889f20b6a8
