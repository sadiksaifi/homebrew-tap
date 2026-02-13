class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.4.0-test.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.4.0-test.1/ai-git-darwin-arm64.tar.gz"
      sha256 "e99f7491a50ca4bd22f4fa9f266af9560547a98002dfa83b6bb53b11ed7beefd"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.4.0-test.1/ai-git-darwin-x64.tar.gz"
      sha256 "287abfed05d35b36b87fe0fc835cccf5ada8d097376f8a4c8a98d2fbda2bb7cd"
    end
  end

  def install
    bin.install "ai-git"
  end
end
