class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.0.1/ai-git-darwin-arm64.tar.gz"
      sha256 "eba953b7eed2a38159a724fdd50ce86301f6b36bd80d3cde4d8ac02fd5fd4d24"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.0.1/ai-git-darwin-x64.tar.gz"
      sha256 "5a070d9a2615bbe0b910b5d27500d315412d99be2fec03049d57c1e2f855a7a0"
    end
  end

  def install
    bin.install "ai-git"
  end
end
