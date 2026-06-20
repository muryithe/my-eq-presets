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
   git clone https://github.com/YOUR_USERNAME/my-eq-presets.git
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
└── README.md
```

---

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

---

## Contributing

These are personal presets but PRs are welcome! If you have a great-sounding preset for a genre not covered here, add a JSON file under `presets/` and open a PR.

---

## License

MIT — do whatever you want with these.
