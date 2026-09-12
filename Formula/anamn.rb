class Anamn < Formula
  desc "Local-first AI-memory CLI"
  homepage "https://github.com/TowardInfinity/anamn"
  version "0.4.0"
  license "MIT"
  depends_on arch: :arm64
  # Mirror-tag revision note: URLs embed the dots-releases tag that carries
  # the assets (anamn-v0.4.0-1). Any re-roll = new tag suffix + url+sha bump
  # in the same PR; shas below come from the release notes, not this file.
  # URLs are per-OS (not per-arch): v0.4.0 ships arm64 only, and
  # `depends_on arch: :arm64` above is the install-time guard for Intel.
  # (Nested on_arm blocks leave Intel variants URL-less, which fails
  # tap-time validation with "formula requires at least a URL".)
  on_macos do
    url "https://github.com/TowardInfinity/dots-releases/releases/download/anamn-v0.4.0-1/anamn-darwin-aarch64.tar.gz"
    sha256 "7b4f1401647edf35645fb1da34d49e2634c8ac83272da389e6d3e655507160a7"
  end
  on_linux do
    url "https://github.com/TowardInfinity/dots-releases/releases/download/anamn-v0.4.0-1/anamn-linux-aarch64.tar.gz"
    sha256 "98335fcf70815383806594d5e3ded3166bfc5eab21abb45c9ff64b12158919e1"
  end

  def install
    bin.install "anamn"
  end

  test do
    assert_match "anamn", shell_output("#{bin}/anamn --version")
  end
end
