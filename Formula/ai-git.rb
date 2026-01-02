class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.0.2/ai-git-darwin-arm64.tar.gz"
      sha256 "6abd65512a146e249f105d0cb7772cee6e8ba32c18418dc506ca6e36c35411c6"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.0.2/ai-git-darwin-x64.tar.gz"
      sha256 "cc6c4f2de097ba40cde447487c2dabfa81531d2dc71a51863edab048e7e879c3"
    end
  end

  def install
    bin.install "ai-git"
  end
end
