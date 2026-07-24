class MacMenu < Formula
  desc "A command line tool for Mac"
  homepage "https://github.com/sadiksaifi/mac-menu"
  url "https://github.com/sadiksaifi/mac-menu/releases/download/v1.0.1/mac-menu.tar.gz"
  sha256 "9457e3198cfe1eb5b582ab124b57379192cca4bb3272b07cea580138c5057a55"
  license "MIT"

  def install
    bin.install "mac-menu"
  end

  test do
    system "#{bin}/mac-menu", "--help"
  end
end
