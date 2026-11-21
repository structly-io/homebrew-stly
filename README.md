# Homebrew tap for stly

Install the [stly CLI](https://github.com/structly-io/stly) on Apple Silicon or Intel Macs:

```sh
brew tap structly-io/stly
brew install --cask structly-io/stly/stly
```

The fully qualified Cask name approves this tap for the initial install on Homebrew 7.
After installation, use the short name:


```sh
brew update
brew upgrade --cask stly
```

## Repair an existing tap

The tap history was reset in November 2026. If `brew update` reports a conflict
or `stly` becomes unreadable, align your local tap with the new history once.
This also switches a tap that still points to `https://github.com/structly-io/stly.git`:

```sh
TAP="$(brew --repo structly-io/stly)"
git -C "$TAP" rebase --abort 2>/dev/null || true
git -C "$TAP" remote set-url origin https://github.com/structly-io/homebrew-stly.git
git -C "$TAP" fetch origin
git -C "$TAP" checkout -f -B main origin/main
brew update
```

This keeps the installed stly binary. Do not use `brew untap --force` to repair
the tap; Homebrew 7 may uninstall the installed Cask.

This repository contains the Homebrew Cask. Binaries and releases remain in
[structly-io/stly](https://github.com/structly-io/stly/releases).
