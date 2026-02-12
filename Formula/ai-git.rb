class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.2.1/ai-git-darwin-arm64.tar.gz"
      sha256 "655759fe9ef5e4e01dbc0d6e4454e6333abd5e54a94282a53533ee24aed45006"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.2.1/ai-git-darwin-x64.tar.gz"
      sha256 "9ab96da25b33e281fc39ed0ca36be57ee82e7acc685a0463dd0b4a885802383a"
    end
  end

  def install
    bin.install "ai-git"
  end
end
