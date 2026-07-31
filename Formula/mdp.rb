class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "3.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v3.3.0/mdp-darwin-arm64.tar.gz"
      sha256 "3c934d8a527289f852f8b5c4088cb3059f40bea8b78c5354040f828710011cf4"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v3.3.0/mdp-darwin-amd64.tar.gz"
      sha256 "0d72e659c776656034b7328548891dabbd431ace3932a964a4a7980d16d160d2"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
