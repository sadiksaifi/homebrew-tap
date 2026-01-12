class Mdp < Formula
  desc "A fast CLI tool that previews Markdown files in your browser with GitHub-styled rendering"
  homepage "https://github.com/sadiksaifi/mdp"
  version "2.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.2.1/mdp-darwin-arm64.tar.gz"
      sha256 "e87eac344382502d91bdf063e02a6edc00728d751631d51a266a664f061e6405"
    else
      url "https://github.com/sadiksaifi/mdp/releases/download/v2.2.1/mdp-darwin-amd64.tar.gz"
      sha256 "c7275ce76e8d8b0a46de5be953cc979debbdfc74efe3d14e6c142fe29b471aab"
    end
  end

  def install
    bin.install "mdp"
  end

  test do
    system "#{bin}/mdp", "--help" rescue nil
  end
end
