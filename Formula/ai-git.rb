class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.0.0/ai-git-darwin-arm64.tar.gz"
      sha256 "4b4ab722b9d777619d8efdfbed786599103edef53b65c9ee7c3cf2ce2134106c"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.0.0/ai-git-darwin-x64.tar.gz"
      sha256 "8440fd220db881292757af22b80e62a018c64c9f9dbbfcb8295444b1bf5fbc69"
    end
  end

  def install
    bin.install "ai-git"
  end
end
