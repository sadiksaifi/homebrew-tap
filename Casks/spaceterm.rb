cask "spaceterm" do
  version "0.11.1"
  sha256 "4641c70242419fea35e43ddda0d7f8a891d194cfd5298f8847064e3337af0b7d"

  url "https://github.com/sadiksaifi/SpaceTerm/releases/download/v#{version}/SpaceTerm-#{version}-macos-arm64.dmg"
  name "SpaceTerm"
  desc "Native desktop terminal multiplexer"
  homepage "https://spaceterm.peblon.com"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "SpaceTerm.app"

  zap trash: [
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
