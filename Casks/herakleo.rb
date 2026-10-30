cask "herakleo" do
  version "0.3.0"
  sha256 "618fb2fd74559d5a8bab9d2ee22ffd71548e874a539fce471133d70bff1709d1"

  url "https://github.com/crstian19/herakleo/releases/download/v#{version}/herakleo-#{version}-macos-universal.dmg"
  name "Herakleo"
  desc "Desktop IPTV player for M3U and Xtream Codes that plays in mpv, VLC or IINA"
  homepage "https://github.com/crstian19/herakleo"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Herakleo.app"

  zap trash: [
    "~/Library/Application Support/herakleo",
    "~/Library/Caches/me.crstian.Herakleo",
    "~/Library/HTTPStorages/me.crstian.Herakleo",
    "~/Library/Preferences/me.crstian.Herakleo.plist",
    "~/Library/Saved Application State/me.crstian.Herakleo.savedState",
    "~/Library/WebKit/me.crstian.Herakleo",
  ]

  caveats <<~EOS
    Herakleo is not notarized by Apple, so macOS blocks the first launch.
    To open it, do one of:

      - Right-click Herakleo.app in /Applications, choose Open, then confirm.
      - Or, if you trust the app, run:
          xattr -dr com.apple.quarantine /Applications/Herakleo.app

    Herakleo ships no channels and plays them in an external player:
      brew install --cask iina   # or: brew install mpv / brew install --cask vlc
  EOS
end
