cask "spaceterm" do
  version "0.11.5"
  sha256 "b40e8363699923cfa22d321fac6c78dd30ddfd6b09fd6716f4b37bcf815753e0"

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
