class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.11.0/ai-git-darwin-arm64.tar.gz"
      sha256 "3913eb8eac33398f927908983406a3410ff6b7ae6d0b29bb1ec2430163aad2b7"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.11.0/ai-git-darwin-x64.tar.gz"
      sha256 "3071771562edaa5bb951a86cbcb3b52c8d7da8a731470bf5bcbf4af9818f2c59"
    end
  end

  def install
    bin.install "ai-git"
  end
end
