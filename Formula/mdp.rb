class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.3.0/mdp-darwin-arm64.tar.gz"
      sha256 "ca9b42b6a70e37027ed8950aa2f6c327ace2d3d2b31ca0a0f8c62d5771bed3c5"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.3.0/mdp-darwin-amd64.tar.gz"
      sha256 "24199a2deeb2430cd3b6e8035e9343c92520ff0a669feacbe92e909698077caf"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
