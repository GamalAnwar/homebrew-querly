# Homebrew Tap for Querly

A [Homebrew](https://brew.sh) tap for [Querly](https://github.com/quietkit/Querly) — a fast, native macOS database client for MySQL, PostgreSQL, and SQLite.

## Install

```bash
brew install --cask quietkit/querly/querly
```

Or tap first, then install:

```bash
brew tap quietkit/querly
brew install --cask querly
```

## Upgrade

```bash
brew upgrade --cask querly
```

## Uninstall

```bash
brew uninstall --cask querly
```

---

> **Note:** Querly is currently ad-hoc signed (not notarized). On first launch macOS Gatekeeper may block it — right-click the app and choose **Open**, or run `xattr -dr com.apple.quarantine "/Applications/Querly.app"`.
