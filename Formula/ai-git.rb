class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.0.3/ai-git-darwin-arm64.tar.gz"
      sha256 "23a8319d0bd74b4ef6e74da39bcfa445478bf91a32fde13e19e1ced6391c2642"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.0.3/ai-git-darwin-x64.tar.gz"
      sha256 "64ec05cb19044b507c258bf1345512c4647a5e64457f70c30d39889b1ef0fbc7"
    end
  end

  def install
    bin.install "ai-git"
  end
end
