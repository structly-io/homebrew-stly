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

## Switch an existing tap

If you previously registered `https://github.com/structly-io/stly.git` as the tap,
register the dedicated tap repository once:

```sh
brew tap --custom-remote structly-io/stly https://github.com/structly-io/homebrew-stly.git
brew update
brew install --cask structly-io/stly/stly
```

This changes the tap remote while preserving the installed stly binary. The Cask
name remains `structly-io/stly/stly`. Do not use `brew untap --force` to migrate an
installed Cask; Homebrew 7 may uninstall it.

This repository contains the Homebrew Cask. Binaries and releases remain in
[structly-io/stly](https://github.com/structly-io/stly/releases).
