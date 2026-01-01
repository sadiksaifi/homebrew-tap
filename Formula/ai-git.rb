class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "1.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v1.2.1/ai-git-darwin-arm64.tar.gz"
      sha256 "a14846ac454e3d8a12a30b9d3d11a0ea6b760c0998d31728c03453b280e66425"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v1.2.1/ai-git-darwin-x64.tar.gz"
      sha256 "aa874d4b27a2e1f12fb465f47815e55543c1dfe7e6d0dfdb47650227d8a0a46c"
    end
  end

  def install
    bin.install "ai-git"
  end
end
