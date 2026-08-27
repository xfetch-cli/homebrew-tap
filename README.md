# XFetch Homebrew Tap

Homebrew tap for [xfetch](https://github.com/xfetch-cli/xfetch) — a fast, customizable system information fetch tool for the terminal.

This tap provides **prebuilt binaries** for macOS (Apple Silicon and Intel) from the [GitHub Releases](https://github.com/xfetch-cli/xfetch/releases) of xfetch. No Rust toolchain or compilation is required, and no code signing is needed (Homebrew installs directly, bypassing Gatekeeper).

## Install

```bash
brew tap xfetch-cli/tap
brew install xfetch
```

## Update

```bash
brew upgrade xfetch
```

## Uninstall

```bash
brew uninstall xfetch
brew untap xfetch-cli/tap
```

## Supported platforms

- macOS arm64 (Apple Silicon)
- macOS x86_64 (Intel)
