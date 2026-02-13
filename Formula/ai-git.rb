class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.6.1/ai-git-darwin-arm64.tar.gz"
      sha256 "960535f0383fc1718426b2f1994653067f3fa5c53b52d1f14ba6587dc0b7acb0"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.6.1/ai-git-darwin-x64.tar.gz"
      sha256 "5b89c20941d3e5d71becdb0b427b18d042975d18f589e3561ef7feae3f583a06"
    end
  end

  def install
    bin.install "ai-git"
  end
end
