class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v1.0.0/mdp-darwin-arm64.tar.gz"
      sha256 "4625cacceb45cafc41bdd9efd148a1079b35586b25b20996c52c67b77b64c340"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v1.0.0/mdp-darwin-amd64.tar.gz"
      sha256 "7c3ef5c41d9a990b12ba5c0b0de5a5177824183805f0a6db8b42ee4dc6019f39"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
