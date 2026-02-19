class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.6.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.6.3/ai-git-darwin-arm64.tar.gz"
      sha256 "afa1160876d9af935e1a356e89d41211df901344fc7d5dc8060d584be2a1e368"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.6.3/ai-git-darwin-x64.tar.gz"
      sha256 "22869e9d3ed8f8bb8de4ce50426028f4b49c710506525944949d2d6c0b8dd768"
    end
  end

  def install
    bin.install "ai-git"
  end
end
