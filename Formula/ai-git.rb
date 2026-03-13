class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.8.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.8.3/ai-git-darwin-arm64.tar.gz"
      sha256 "3466d4ab83aa15b8c82e12c2d4870700f6f4bb938c74708a7458c07f70110bf9"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.8.3/ai-git-darwin-x64.tar.gz"
      sha256 "5d4de14acbacec0cb703e09b8d75272f0d5aee02d4f576da84dbe934ab985f74"
    end
  end

  def install
    bin.install "ai-git"
  end
end
