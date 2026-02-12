class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.2.1/ai-git-darwin-arm64.tar.gz"
      sha256 "fd6706af48da5a3d5ad65bf978141956a4016b24c468ca3ec319dc9ca1b7f740"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.2.1/ai-git-darwin-x64.tar.gz"
      sha256 "1b671034cabc5295cebe5281221121b5a5bd912adc8d6e8e3810d217218a8cd1"
    end
  end

  def install
    bin.install "ai-git"
  end
end
