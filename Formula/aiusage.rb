class Aiusage < Formula
  desc "Claude Code and Codex usage, with local reset times and countdowns"
  homepage "https://github.com/sadiksaifi/aiusage"
  url "https://github.com/sadiksaifi/aiusage/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "3615fc47361189476e91dd4ebea10ee748a1d18bdc9417c4a65cd6c18cef29dd"

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
