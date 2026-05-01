class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.10.0/ai-git-darwin-arm64.tar.gz"
      sha256 "40be09ec2f4f6144835133154eb7771d3facb6345732ffc6978a2dd72dbf4523"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.10.0/ai-git-darwin-x64.tar.gz"
      sha256 "6327e60ce7aef931cbcc0d9206408665bc78776888c488b8dd0f63d802b350b9"
    end
  end

  def install
    bin.install "ai-git"
  end
end
