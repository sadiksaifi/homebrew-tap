class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.8.2/ai-git-darwin-arm64.tar.gz"
      sha256 "219b271dc5dee0772f0add22cabb03f8cdfcda1d88744286c6a9b4955dea56a1"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.8.2/ai-git-darwin-x64.tar.gz"
      sha256 "42d857a2a679e3af9ece4193752af02c04872f943f120d1deeb1602402ec5a6c"
    end
  end

  def install
    bin.install "ai-git"
  end
end
