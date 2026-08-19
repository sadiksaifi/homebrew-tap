class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "3.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v3.0.0/ai-git-darwin-arm64.tar.gz"
      sha256 "9cec7db0e858807f4b311b699a64914c15c5556b6ed664075fe791260be48b78"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v3.0.0/ai-git-darwin-x64.tar.gz"
      sha256 "2ee6396386bee4d0ad3924f83ac40369d5ada4af6d0bb0f14e98164aa19931ac"
    end
  end

  def install
    bin.install "ai-git"
  end
end
