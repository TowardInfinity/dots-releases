class Anamn < Formula
  desc "Local-first AI-memory CLI"
  homepage "https://github.com/TowardInfinity/anamn"
  version "0.5.2"
  license "MIT"
  depends_on arch: :arm64
  # Mirror-tag revision note: URLs embed the dots-releases tag that carries
  # the assets (anamn-v0.5.2-1). Any re-roll = new tag suffix + url+sha bump
  # in the same PR; shas below come from the release notes, not this file.
  # URLs are per-OS (not per-arch): v0.5.2 ships arm64 only, and
  # `depends_on arch: :arm64` above is the install-time guard for Intel.
  # (Nested on_arm blocks leave Intel variants URL-less, which fails
  # tap-time validation with "formula requires at least a URL".)
  on_macos do
    url "https://github.com/TowardInfinity/dots-releases/releases/download/anamn-v0.5.2-1/anamn-darwin-aarch64.tar.gz"
    sha256 "3e7072d4ff763bb689fcb9fd70b80988cb03c35e97a25068bc1d189244ad4fe8"
  end
  on_linux do
    url "https://github.com/TowardInfinity/dots-releases/releases/download/anamn-v0.5.2-1/anamn-linux-aarch64.tar.gz"
    sha256 "85027f13524b19abd8860ead61b84057fce47c80b9caee2252017ba40f1bc927"
  end

  def install
    bin.install "anamn"
  end

  test do
    assert_match "anamn", shell_output("#{bin}/anamn --version")
  end
end
