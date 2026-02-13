class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.3.0/ai-git-darwin-arm64.tar.gz"
      sha256 "8b847e5ef3aebc438cc150451649e66f41b4fddf0b89362db20a44a8fafcef4b"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.3.0/ai-git-darwin-x64.tar.gz"
      sha256 "debfc1f9486504349a531d83cc50ce0e129c0771fce8e138b66253d8633e8448"
    end
  end

  def install
    bin.install "ai-git"
  end
end
