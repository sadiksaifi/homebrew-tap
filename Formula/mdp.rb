class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "2.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.2.2/mdp-darwin-arm64.tar.gz"
      sha256 "577910fabb0dbe078dcc27d9aafc0b8c31aa9c9d8a8ec0dcdd725e55de812afe"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.2.2/mdp-darwin-amd64.tar.gz"
      sha256 "adf74e770e16bea62fc99081d4e057484a8ac0d44755037cf4dc4a4988ebf6a7"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
