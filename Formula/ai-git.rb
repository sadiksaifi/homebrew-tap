class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v1.1.1/ai-git-darwin-arm64.tar.gz"
      sha256 "063f9be035f32ef026bca8e6fbd145fe164714dac7e37f53db6c19a55fa812c3"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v1.1.1/ai-git-darwin-x64.tar.gz"
      sha256 "8a5081feb58c2b8a590d33e03a94213c85ae03c645936cef226e7ea96b9c8bf9"
    end
  end

  def install
    bin.install "ai-git"
  end
end
