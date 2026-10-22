class Aiusage < Formula
  desc "Claude Code and Codex usage, with local reset times and countdowns"
  homepage "https://github.com/sadiksaifi/aiusage"
  url "https://github.com/sadiksaifi/aiusage/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "ad95e89cedc0b81bb2bc107492ced8f317a164b74346ecdbe28fdc7ed5e05e16"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    ldflags = "-s -w -X github.com/sadiksaifi/aiusage/internal/app.version=v#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/aiusage"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/aiusage --version")
    assert_match "Claude Code and Codex", shell_output("#{bin}/aiusage --help")
  end
end
