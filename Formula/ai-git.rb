class AiGit < Formula
  desc "A CLI tool that leverages AI to automatically generate semantically correct, Conventional Commits compliant git messages."
  homepage "https://github.com/sadiksaifi/ai-git"
  version "2.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.6.0/ai-git-darwin-arm64.tar.gz"
      sha256 "f30751e3919dbc2347d5b77dc7a24805b04c71f99baa0e94853b4cb651d314f8"
    else
      url "https://github.com/sadiksaifi/ai-git/releases/download/v2.6.0/ai-git-darwin-x64.tar.gz"
      sha256 "32ae7976b52247971787be36f62487914d4269d4efefe7e90d09c83501790374"
    end
  end

  def install
    bin.install "ai-git"
  end
end
