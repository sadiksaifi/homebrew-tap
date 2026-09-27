class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "3.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v3.3.1/mdp-darwin-arm64.tar.gz"
      sha256 "8d113d694b45e87e17e1dfcdd46f172408ffce28c42f7e2e6c860ef5e5ee65d0"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v3.3.1/mdp-darwin-amd64.tar.gz"
      sha256 "27513acd1784a1161811df90eabf8e42c2f32c804c3a4e298f756eed45d4e4ea"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
