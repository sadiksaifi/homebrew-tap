class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v0.1.0/mdp-darwin-arm64.tar.gz"
      sha256 "cc65e27b57e81778f9d379586870dc6b7f1b63121cbfa29c651c0a738bdc0786"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v0.1.0/mdp-darwin-amd64.tar.gz"
      sha256 "237efb37062b95329b5f20bec0fa6185015c97665587f78499b0bcfe5e020ddd"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
