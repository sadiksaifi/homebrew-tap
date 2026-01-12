class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v0.2.0/mdp-darwin-arm64.tar.gz"
      sha256 "858ab2a7112253bc708c932702675018ad868ec13fcbe75347bb9bd96f0b3513"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v0.2.0/mdp-darwin-amd64.tar.gz"
      sha256 "29934045eea260b195e873d388fe53678a56060bbd92c2d68a799cbb2bc4e635"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
