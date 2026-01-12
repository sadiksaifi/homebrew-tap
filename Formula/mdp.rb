class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.2.0/mdp-darwin-arm64.tar.gz"
      sha256 "78c747929e68cc43446d559e3ed7f8cf80763911bff0035154fae51bf8aa52a3"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.2.0/mdp-darwin-amd64.tar.gz"
      sha256 "01a31022728e1890fe41e779736cdcaea1f04ea54eff05f94463c6d623e7e6bd"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
