class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.8.1/ai-git-darwin-arm64.tar.gz"
      sha256 "51fa5b887884d72fdb24f071f0f4552e450a8356532d1c39056d9641deec2d43"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.8.1/ai-git-darwin-x64.tar.gz"
      sha256 "87a521e5e6b40dd4354b9c744d6123921256c9ccc8822bfd0d3d1c8009356f2d"
    end
  end

  def install
    bin.install "ai-git"
  end
end
