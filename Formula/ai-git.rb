class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.9.0/ai-git-darwin-arm64.tar.gz"
      sha256 "73e84b37cbbc222b38c109ed767eae100f7b06916b5725eb6212583ea837cc3c"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.9.0/ai-git-darwin-x64.tar.gz"
      sha256 "80684c28a7849a46dd4cd63af760b84241e92a27e7c6a6b524de4baf880621be"
    end
  end

  def install
    bin.install "ai-git"
  end
end
