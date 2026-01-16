class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.0.4/ai-git-darwin-arm64.tar.gz"
      sha256 "4ba2acc4c9b53243b8c92e9701ed8e08a7210c4c0321ed5e6cc9b2423b10b80f"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.0.4/ai-git-darwin-x64.tar.gz"
      sha256 "c04d1246e40318892fba0b6b429685ab04d4f226732f225a6fc92c02f7657700"
    end
  end

  def install
    bin.install "ai-git"
  end
end
