cask "lensjet" do
  version "0.3.0"
  sha256 "fad9eba6d274702e43c8d7cba5c848eed9e6601afc3c828f2be114448f6cab01" # macos_sha256

  url "https://github.com/alexpp90/photo-selector/releases/download/macos-desktop-v#{version}/photo-selector-macos-apple-silicon.zip"
  name "Lensjet"
  desc "Mac photo culling: compare, score and sort photos on-device"
  homepage "https://github.com/alexpp90/photo-selector"

  conflicts_with cask: "lensjet@nightly"
  depends_on macos: :sonoma

  app "Lensjet.app"

  caveats <<~EOS
    Lensjet is not notarized by Apple yet, so macOS blocks the first launch
    ("Apple could not verify ...").
    Open System Settings > Privacy & Security, scroll to Security, click "Open Anyway"
    next to Lensjet and confirm. This is needed once.
    Or, in Terminal: xattr -dr com.apple.quarantine /Applications/Lensjet.app

    Installed Lensjet as photo-selector-toolbox? That cask no longer updates. Once:
    brew uninstall --cask photo-selector-toolbox && brew install --cask lensjet
  EOS

  zap trash: [
    "~/Library/Preferences/com.photoselectortoolbox.macos.plist",
    "~/Library/Preferences/app.alpatix.lensjet.plist",
  ]
end
