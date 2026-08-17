class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.11.0/ai-git-darwin-arm64.tar.gz"
      sha256 "0c4d8b9f22df282d74c636e6e406fe3d7757d95797e42332027d49f0236f0655"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.11.0/ai-git-darwin-x64.tar.gz"
      sha256 "82ea2b92f105f69893cde7d908df081d40287457a8cc13cbf9c19779e65d13de"
    end
  end

  def install
    bin.install "ai-git"
  end
end
