class Anamn < Formula
  desc "Local-first AI-memory CLI"
  homepage "https://github.com/TowardInfinity/anamn"
  version "0.1.0"
  license "MIT"
  # Mirror-tag revision note: URLs embed the dots-releases tag that carries
  # the assets (anamn-v0.1.0-3). Any re-roll = new tag suffix + url+sha bump
  # in the same PR; shas below come from the release notes, not this file.
  on_macos do
    on_arm do
      url "https://github.com/TowardInfinity/dots-releases/releases/download/anamn-v0.1.0-3/anamn-darwin-aarch64.tar.gz"
      sha256 "ec6095c4cc0fc763354b4d0ea33e8da37dff9710241c34b223ae8a4c07b97dac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/TowardInfinity/dots-releases/releases/download/anamn-v0.1.0-3/anamn-linux-aarch64.tar.gz"
      sha256 "0b0c199402ad44eb2dee34aaee792a7a6fdd45ebfd183438e8d79bac6d827493"
    end
  end
  depends_on arch: :arm64

  def install
    bin.install "anamn"
  end

  test do
    assert_match "anamn", shell_output("#{bin}/anamn --version")
  end
end
