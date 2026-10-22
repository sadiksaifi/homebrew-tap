class Appsum < Formula
  desc "CPU and memory usage for apps and process trees"
  homepage "https://github.com/sadiksaifi/appsum"
  url "https://github.com/sadiksaifi/appsum/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "64442f73ae8d06b446b9804517043b61c02be42e8ed819886effe1fb7d4eca00"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    ldflags = "-s -w -X github.com/sadiksaifi/appsum/internal/app.version=v#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/appsum"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/appsum --version")
    report = JSON.parse(shell_output("#{bin}/appsum #{Process.pid} --json --interval 100ms"))
    assert_equal Process.pid, report.fetch("groups").first.fetch("processes").first.fetch("pid")
  end
end
