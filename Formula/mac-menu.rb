class MacMenu < Formula
  desc "A command line tool for Mac"
  homepage "https://github.com/sadiksaifi/mac-menu"
  url "https://github.com/sadiksaifi/mac-menu/releases/download/v1.0.0/mac-menu.tar.gz"
  sha256 "55e96d90ff421e0a76c7ec04432d487cde7a715303f6f02ea3de4f5e4a0a0062"
  license "MIT"

  def install
    bin.install "mac-menu"
  end

  test do
    system "#{bin}/mac-menu", "--help"
  end
end
