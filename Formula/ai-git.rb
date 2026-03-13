class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.8.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.8.4/ai-git-darwin-arm64.tar.gz"
      sha256 "494e4523b6c09ecd9e76737b45482e43af3d6ad2d111371957394c1c46b31a65"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.8.4/ai-git-darwin-x64.tar.gz"
      sha256 "83d004aca2cda42dc108d11bc224723df7d261a344fe141dd23aac9275fee5d1"
    end
  end

  def install
    bin.install "ai-git"
  end
end
