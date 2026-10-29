class Hdcap < Formula
  desc "HDMI and UVC capture with Apple silicon hardware encoding"
  homepage "https://github.com/sadiksaifi/hdcap"
  url "https://github.com/sadiksaifi/hdcap/releases/download/v0.1.1/hdcap_darwin_arm64.tar.gz"
  version "0.1.1"
  sha256 "9b625014b2c200b19133edbc05da86bed7cb5add2e74c488588d1ce193e86f58"
  license "GPL-3.0-only"

  depends_on :macos
  depends_on arch: :arm64
  on_macos do
    depends_on macos: :tahoe
  end

  def install
    bin.install "hdcap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hdcap --version")
    assert_match "Capture HDMI and UVC", shell_output("#{bin}/hdcap --help")
  end
end
