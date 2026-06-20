#!/bin/bash
# =============================================================
#  sync.sh — pull remote changes then push local presets
#  Repo: https://github.com/muryithe/Audio-presets.git
# =============================================================

set -e  # stop on any error

REMOTE="https://github.com/muryithe/Audio-presets.git"
BRANCH="main"

# ── 1. First-time setup: initialise git if not already done ──
if [ ! -d ".git" ]; then
  echo ">>> Initialising git repo..."
  git init
  git remote add origin "$REMOTE"
fi

# ── 2. Make sure the remote URL is correct ───────────────────
git remote set-url origin "$REMOTE"

# ── 3. Pull latest changes from remote ───────────────────────
echo ">>> Pulling latest from origin/$BRANCH..."
git fetch origin
git pull origin "$BRANCH" --allow-unrelated-histories --no-rebase

# ── 4. Stage everything ──────────────────────────────────────
echo ">>> Staging all changes..."
git add -A

# ── 5. Commit (only if there is something new to commit) ─────
if git diff --cached --quiet; then
  echo ">>> Nothing new to commit — working tree clean."
else
  git commit -m "sync: update presets and merge with remote"
fi

# ── 6. Push to remote ────────────────────────────────────────
echo ">>> Pushing to origin/$BRANCH..."
git push -u origin "$BRANCH"

echo ""
echo "✓ Done. Repo is up to date at:"
echo "  $REMOTE"
