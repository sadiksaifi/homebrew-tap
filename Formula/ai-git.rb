class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.6.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.6.4/ai-git-darwin-arm64.tar.gz"
      sha256 "aa3276ea23610651dfd1e22ce6df6579d8a2a6e00ce0a340fdb8bfe8d2456c14"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.6.4/ai-git-darwin-x64.tar.gz"
      sha256 "358014e5f9dc08f01e4704f71354bc606232a76d00389a7ba6eeeb2246e5063c"
    end
  end

  def install
    bin.install "ai-git"
  end
end
