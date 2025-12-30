class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v1.1.0/ai-git-darwin-arm64.tar.gz"
      sha256 "0a31706e8563cbcc1ee12c26693d46a5f790eea0d104bd14fe9310b3d2d586cf"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v1.1.0/ai-git-darwin-x64.tar.gz"
      sha256 "a709dff37f9106e35b10ae27e55f5509002162f9ffcee177849558c2f085f63b"
    end
  end

  def install
    bin.install "ai-git"
  end
end
