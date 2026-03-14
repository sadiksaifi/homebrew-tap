class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.8.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.8.5/ai-git-darwin-arm64.tar.gz"
      sha256 "4c596aff69861b06d628bdad3db58dd9fe8c6fd808d97cfc2514899b425e7a30"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.8.5/ai-git-darwin-x64.tar.gz"
      sha256 "ec150b7424dc705701b567362983edfe426531ea520aeb16b92656e379980d5e"
    end
  end

  def install
    bin.install "ai-git"
  end
end
