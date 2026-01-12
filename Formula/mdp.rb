class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.1.0/mdp-darwin-arm64.tar.gz"
      sha256 "2e235599a9d6de98fbd9f545bb841c35599a857409a27dcc2acec1e93d738ae7"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.1.0/mdp-darwin-amd64.tar.gz"
      sha256 "6816d52bc5e4d0643997eebcc8c674fe0e50382f7725b5f7abb530f2993d26b5"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
