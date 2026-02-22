class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.8.0/ai-git-darwin-arm64.tar.gz"
      sha256 "53303469007e652a52f08a982f27557e0b412b07770d5baa00e05779b8749c85"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.8.0/ai-git-darwin-x64.tar.gz"
      sha256 "101ffa21aa7169fbe0adc3d6b3abf829f4b536221def959992bf67ccc0a2c533"
    end
  end

  def install
    bin.install "ai-git"
  end
end
