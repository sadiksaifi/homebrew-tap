class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.2.1/ai-git-darwin-arm64.tar.gz"
      sha256 "cc094b602573ad214883980c163befdc63f3e96e2329547eeafa03cf9ac4a4e4"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.2.1/ai-git-darwin-x64.tar.gz"
      sha256 "7dbdaea9712de46b603403bdc531639267c217236e52b28bdde7ed58f5572edb"
    end
  end

  def install
    bin.install "ai-git"
  end
end
