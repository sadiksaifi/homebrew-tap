class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "3.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v3.0.2/ai-git-darwin-arm64.tar.gz"
      sha256 "0fe8f37b8b0726ae652cba4c96b1bcecdacb94055a405d4be271861f2c7e6bb5"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v3.0.2/ai-git-darwin-x64.tar.gz"
      sha256 "a90136e8fa5ae708c89d5fa909ae172a1bc8d4accb547073850885bb61ff60e7"
    end
  end

  def install
    bin.install "ai-git"
  end
end
