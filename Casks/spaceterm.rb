cask "spaceterm" do
  version "0.6.2"
  sha256 "e6725049f12ad96fb30acfab6f8f8750f3268957d724e13f9824657bab90e26d"

  url "https://github.com/sadiksaifi/SpaceTerm/releases/download/v#{version}/SpaceTerm-#{version}-darwin-arm64.dmg"
  name "SpaceTerm"
  desc "Native desktop terminal multiplexer"
  homepage "https://github.com/sadiksaifi/SpaceTerm"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "SpaceTerm.app"

  # SpaceTerm is ad hoc signed and not notarized; see ADR 0009 in the SpaceTerm repository.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/SpaceTerm.app"]
  end

  zap trash: [
    "~/.cache/spaceterm",
    "~/.config/spaceterm",
    "~/.local/share/spaceterm",
    "~/.local/state/spaceterm",
    "~/Library/Caches/io.github.sadiksaifi.spaceterm",
    "~/Library/HTTPStorages/io.github.sadiksaifi.spaceterm",
    "~/Library/HTTPStorages/io.github.sadiksaifi.spaceterm.binarycookies",
    "~/Library/Preferences/io.github.sadiksaifi.spaceterm.plist",
  ]

  caveats "By using SpaceTerm, you acknowledge that it's not notarized."
end
