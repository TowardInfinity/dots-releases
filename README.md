# dots-releases

Archive. Signed public Dots release artifacts; source lives elsewhere.

- New releases for **anamn** live in [`TowardInfinity/release`](https://github.com/TowardInfinity/release)
  from `anamn-v0.7.0-1`; anamn's mirror key is published there as `keys/anamn.pub`.
- This repository stays online so everything already published keeps working and
  verifying: anamn up to `anamn-v0.6.0-1`, and the Go-era `v0.1.x` Dots releases.
- The `Formula/anamn.rb` in this tap is **frozen at 0.6.0** (anamn 0.7.0 is live
  in the new mirror). Verified migration, in this order:
  `brew uninstall anamn` (brew refuses to untap a tap that still holds it),
  `brew untap towardinfinity/dots-releases`,
  `brew tap towardinfinity/release https://github.com/TowardInfinity/release`,
  `brew trust towardinfinity/release` (Homebrew requires trusting a new tap),
  `brew install anamn`.
