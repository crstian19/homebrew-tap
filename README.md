# crstian19's Homebrew tap

[Homebrew](https://brew.sh) tap for apps by [crstian19](https://github.com/crstian19).

```bash
brew install --cask crstian19/tap/herakleo
```

| App | Description |
|---|---|
| [Herakleo](https://github.com/crstian19/herakleo) | Desktop IPTV player for M3U playlists and Xtream Codes accounts |

## Herakleo

Herakleo is not notarized by Apple, so macOS blocks the first launch: right-click Herakleo.app in
Applications and choose Open, or run `xattr -dr com.apple.quarantine /Applications/Herakleo.app`
once. It needs macOS 12 or newer, and an external player:

```bash
brew install --cask iina   # or: brew install mpv / brew install --cask vlc
```

Remove it with `brew uninstall --cask herakleo` (`--zap` also deletes your lists and settings).

Casks update themselves: a daily workflow ([`bump.yml`](.github/workflows/bump.yml)) opens a pull
request when an app has a new release.
