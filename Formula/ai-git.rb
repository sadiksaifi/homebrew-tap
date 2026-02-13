class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.4.0/ai-git-darwin-arm64.tar.gz"
      sha256 "a11bad8a459ae16c18d5f8dd987414ab70356858a32939f6b35a23725c8412db"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.4.0/ai-git-darwin-x64.tar.gz"
      sha256 "0472fed9170f8505293c2e6c9716a12c2f4eec9ef8f314e1c76a4cf86bdad1f6"
    end
  end

  def install
    bin.install "ai-git"
  end
end
