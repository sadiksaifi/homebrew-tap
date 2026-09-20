class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "3.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v3.0.3/ai-git-darwin-arm64.tar.gz"
      sha256 "48b0b2fe89353d27c93521a0e99a040a99ed1ae4ab11027bb0ba184a893e4fc6"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v3.0.3/ai-git-darwin-x64.tar.gz"
      sha256 "f220b8342b185bd8336f723193bc75c8c69f1fced9d63c092308b377bb10364d"
    end
  end

  def install
    bin.install "ai-git"
  end
end
