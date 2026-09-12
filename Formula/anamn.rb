class Anamn < Formula
  desc "Local-first AI-memory CLI"
  homepage "https://github.com/TowardInfinity/anamn"
  version "0.5.1"
  license "MIT"
  depends_on arch: :arm64
  # Mirror-tag revision note: URLs embed the dots-releases tag that carries
  # the assets (anamn-v0.5.1-1). Any re-roll = new tag suffix + url+sha bump
  # in the same PR; shas below come from the release notes, not this file.
  # URLs are per-OS (not per-arch): v0.5.1 ships arm64 only, and
  # `depends_on arch: :arm64` above is the install-time guard for Intel.
  # (Nested on_arm blocks leave Intel variants URL-less, which fails
  # tap-time validation with "formula requires at least a URL".)
  on_macos do
    url "https://github.com/TowardInfinity/dots-releases/releases/download/anamn-v0.5.1-1/anamn-darwin-aarch64.tar.gz"
    sha256 "6a2f1478dd236af434873552c4146d351089420217e64a1b253fad8f78c36406"
  end
  on_linux do
    url "https://github.com/TowardInfinity/dots-releases/releases/download/anamn-v0.5.1-1/anamn-linux-aarch64.tar.gz"
    sha256 "84bff0fc0fdfc6f41bc6e7fccf1776b48965d7af47fe1a72a847f88c0586b181"
  end

  def install
    bin.install "anamn"
  end

  test do
    assert_match "anamn", shell_output("#{bin}/anamn --version")
  end
end
