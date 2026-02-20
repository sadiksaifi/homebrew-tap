class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.7.0/ai-git-darwin-arm64.tar.gz"
      sha256 "607246510adfe9c22678323dfc1ab4a20417506c8fb41613ca61737e375583ce"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.7.0/ai-git-darwin-x64.tar.gz"
      sha256 "a9a2cfebef8a7df7f71d9cf454110243419d7850ada29e18c010481dc6c386ce"
    end
  end

  def install
    bin.install "ai-git"
  end
end
