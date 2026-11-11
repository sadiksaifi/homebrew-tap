cask "spaceterm" do
  version "0.11.4"
  sha256 "593f1d669bdf97a4b4379f04da85d0c5abcd11dc77e4137fb868db0508b083f1"

  url "https://github.com/sadiksaifi/SpaceTerm/releases/download/v#{version}/SpaceTerm-#{version}-macos-arm64.dmg"
  name "SpaceTerm"
  desc "Native desktop terminal multiplexer"
  homepage "https://spaceterm.peblon.com"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "SpaceTerm.app"

  uninstall on_upgrade: :signal,
            signal:     ["TERM", "com.peblon.spaceterm"]

  zap launchctl: [
        "com.peblon.spaceterm.core",
        "com.peblon.spaceterm.core.recovery",
      ],
      delete:    "~/.local/bin/spaceterm",
      trash:     [
        "~/.cache/spaceterm",
        "~/.config/spaceterm",
        "~/.local/share/spaceterm",
        "~/.local/state/spaceterm",
        "~/Library/Caches/com.peblon.spaceterm",
        "~/Library/HTTPStorages/com.peblon.spaceterm",
        "~/Library/HTTPStorages/com.peblon.spaceterm.binarycookies",
        "~/Library/Preferences/com.peblon.spaceterm.plist",
        "~/Library/Saved Application State/com.peblon.spaceterm.savedState",
      ]
end
