class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "2.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.0.1/mdp-darwin-arm64.tar.gz"
      sha256 "9a604be885f91d19761ede4acdc56a11d01bb8f22bc96b9d73c8a9b39525ad2d"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.0.1/mdp-darwin-amd64.tar.gz"
      sha256 "25e510aaca612a165c112fd5fd1b918d940d2fb904b2bac40cb069ec31da357b"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
