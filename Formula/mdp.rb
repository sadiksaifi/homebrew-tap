class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "2.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.1.1/mdp-darwin-arm64.tar.gz"
      sha256 "c409cf7993068f2d1b0382042db1849ddd3cda6d76b1d2e75bc0acdf0018883d"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.1.1/mdp-darwin-amd64.tar.gz"
      sha256 "3a773a580ea873b5462c21f04ec9dcae9f7a46b8ba2f358f00dc2e9b36379c22"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
