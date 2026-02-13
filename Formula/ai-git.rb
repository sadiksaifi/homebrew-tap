class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.6.2/ai-git-darwin-arm64.tar.gz"
      sha256 "493d90c766289f75cdb893322610c9fa348499d736634ad4e7a905482e3bfa53"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.6.2/ai-git-darwin-x64.tar.gz"
      sha256 "563380b9c0035a5c0882641ab68c5719865963cdad1cdb75bb69cae6e17c4bbe"
    end
  end

  def install
    bin.install "ai-git"
  end
end
