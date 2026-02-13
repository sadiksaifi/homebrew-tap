class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.5.0/ai-git-darwin-arm64.tar.gz"
      sha256 "0bff66d8a8120be2f91e49665682101bf8798f67800593ca2719e3d1fa8e81c3"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.5.0/ai-git-darwin-x64.tar.gz"
      sha256 "8ef33885919a03b59f90c75fa25bd4381fc8e4cfb767abea2772789b23fe80bf"
    end
  end

  def install
    bin.install "ai-git"
  end
end
