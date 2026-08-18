class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.11.0/ai-git-darwin-arm64.tar.gz"
      sha256 "5c64212f1e0cfae19f761a392c7187e820745dd6f543ec4d1efecb3bdd64266c"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.11.0/ai-git-darwin-x64.tar.gz"
      sha256 "308f733e64061388f26e31a42f2cf5664022f755391752af9387bfa1d751374a"
    end
  end

  def install
    bin.install "ai-git"
  end
end
