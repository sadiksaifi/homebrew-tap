cask "spaceterm" do
  version "0.11.2"
  sha256 "9cfa1bf6f1fb4f8aa5ee392504cb664f03b2d26390c4d25347b0da5b53632007"

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
