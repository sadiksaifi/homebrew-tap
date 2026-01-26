class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "3.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v3.2.0/mdp-darwin-arm64.tar.gz"
      sha256 "ac5bb724ebc96938b3e8b855b08fd255708c072e349ff35115e3b21f65e743e6"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v3.2.0/mdp-darwin-amd64.tar.gz"
      sha256 "e69001da8c16604571733319818c5b52ff6c52d5b57b996bf723cdaccca9c35e"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
