class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "3.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v3.0.1/ai-git-darwin-arm64.tar.gz"
      sha256 "25601ffe266bc8001e408b9016bea591b66c9de67f9c3a8a6cc330c89b5a5178"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v3.0.1/ai-git-darwin-x64.tar.gz"
      sha256 "c30f0fe4cb2ad882d499576ab0e3519fce51c2756bf9730fd98667fb38ed87a4"
    end
  end

  def install
    bin.install "ai-git"
  end
end
