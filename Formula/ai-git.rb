class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v1.2.0/ai-git-darwin-arm64.tar.gz"
      sha256 "a2cdee61284aeb9ea7f52a21f40e5873c5ef4065744bdd1e95111035e99e049d"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v1.2.0/ai-git-darwin-x64.tar.gz"
      sha256 "f6c9c1bcc5bed3e955b479b6f03b85259cc55b2c04cae136c528bef39d247e2b"
    end
  end

  def install
    bin.install "ai-git"
  end
end
