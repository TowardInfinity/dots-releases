class Anamn < Formula
  desc "Local-first AI-memory CLI"
  homepage "https://github.com/TowardInfinity/anamn"
  version "0.5.0"
  license "MIT"
  depends_on arch: :arm64
  # Mirror-tag revision note: URLs embed the dots-releases tag that carries
  # the assets (anamn-v0.5.0-1). Any re-roll = new tag suffix + url+sha bump
  # in the same PR; shas below come from the release notes, not this file.
  # URLs are per-OS (not per-arch): v0.5.0 ships arm64 only, and
  # `depends_on arch: :arm64` above is the install-time guard for Intel.
  # (Nested on_arm blocks leave Intel variants URL-less, which fails
  # tap-time validation with "formula requires at least a URL".)
  on_macos do
    url "https://github.com/TowardInfinity/dots-releases/releases/download/anamn-v0.5.0-1/anamn-darwin-aarch64.tar.gz"
    sha256 "7174f4d64e28b712a98d10cd2de9cc7fccc9132efbfb97e8b0fb81acefe5e2aa"
  end
  on_linux do
    url "https://github.com/TowardInfinity/dots-releases/releases/download/anamn-v0.5.0-1/anamn-linux-aarch64.tar.gz"
    sha256 "2e5b03143d4cb51eef3582250eb561a665a9d1815c3b9174b013907a0420646e"
  end

  def install
    bin.install "anamn"
  end

  test do
    assert_match "anamn", shell_output("#{bin}/anamn --version")
  end
end
