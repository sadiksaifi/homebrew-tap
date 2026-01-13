class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v3.0.0/mdp-darwin-arm64.tar.gz"
      sha256 "f07e8cc9f2c9bb8615dd3e8456339c9a6ec9fad048504b0015632154cf3f11f5"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v3.0.0/mdp-darwin-amd64.tar.gz"
      sha256 "ada2b971b99fdd67ff0db26b41064cb65604e0d88bb19e8e18a0464ffc631283"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
