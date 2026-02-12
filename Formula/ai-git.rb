class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.2.0/ai-git-darwin-arm64.tar.gz"
      sha256 "1c8649159562b8071e97068f06231d854c6789978d0ca3141b66a88973b16fc3"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.2.0/ai-git-darwin-x64.tar.gz"
      sha256 "199725a7831d8e0794a2c9addcefd9bdd80b9787939cee9073bc16ebb1b1e0f0"
    end
  end

  def install
    bin.install "ai-git"
  end
end
