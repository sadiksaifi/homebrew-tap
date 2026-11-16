class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "3.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v3.1.0/ai-git-darwin-arm64.tar.gz"
      sha256 "efd39d4e3fe409c27f501555f21f1c54c8b3f0642eeb571ad7343eff5eefa877"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v3.1.0/ai-git-darwin-x64.tar.gz"
      sha256 "077d73c915be92e5c352df09d9a2d37ff6b2eec253d688ccae2a97101c9ee5e8"
    end
  end

  def install
    bin.install "ai-git"
  end
end
