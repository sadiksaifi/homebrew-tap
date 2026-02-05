class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.1.0/ai-git-darwin-arm64.tar.gz"
      sha256 "d96f8a12934f02a900792a5f981c9261dba596d0af37d871d5e6ba4ae3321695"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.1.0/ai-git-darwin-x64.tar.gz"
      sha256 "e482e27d58b70c145ad923ae1b259a7c5f9f61da340cfbefd5b55c4635e4dea2"
    end
  end

  def install
    bin.install "ai-git"
  end
end
