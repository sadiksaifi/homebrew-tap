class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "3.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v3.1.0/mdp-darwin-arm64.tar.gz"
      sha256 "d9c65a6f1a1388ddb10065c24e58b63987b261ebee3233f2d13aceb2b3f740f8"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v3.1.0/mdp-darwin-amd64.tar.gz"
      sha256 "93bfd2310e6145bc6179410a53f588a30ffeda6246ce565560cf07f76c7a827a"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
