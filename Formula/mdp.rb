class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.0.0/mdp-darwin-arm64.tar.gz"
      sha256 "7df6a351d2ae65e268e4cae3b309ee2f20ddc1d60e211a07436491395850e0a6"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.0.0/mdp-darwin-amd64.tar.gz"
      sha256 "1f771fffbe924c10257ac235a301aca47eb440bbb157c268fbf1775d3ae104d4"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
