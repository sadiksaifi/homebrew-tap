class Hdcap < Formula
  desc "HDMI and UVC capture with Apple silicon hardware encoding"
  homepage "https://github.com/sadiksaifi/hdcap"
  url "https://github.com/sadiksaifi/hdcap/releases/download/v0.1.0/hdcap_darwin_arm64.tar.gz"
  version "0.1.0"
  sha256 "a06cbd68b47cff5a3f7ea37bdd382efd6985fc9c9075e62ee8835b2268001bd9"
  license "GPL-3.0-only"

  depends_on :macos
  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "hdcap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hdcap --version")
    assert_match "Capture HDMI and UVC", shell_output("#{bin}/hdcap --help")
  end
end
