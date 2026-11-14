cask "spaceterm" do
  version "0.11.7"
  sha256 "e0153d61674e2053da628f8d9358d49e9b020b21eeeff72aeca7d9e89d21be99"

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
