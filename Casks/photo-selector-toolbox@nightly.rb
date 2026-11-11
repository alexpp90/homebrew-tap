cask "photo-selector-toolbox@nightly" do
  version :latest
  sha256 "ba811000b4ba4ae3805dd970348644a5743b8c82fd9ec8fc9de1b0665ad2b307" # macos_sha256

  url "https://github.com/alexpp90/photo-selector/releases/download/nightly-macos-desktop/photo-selector-macos-apple-silicon.zip"
  name "Lensjet (Nightly)"
  desc "Mac photo culling: compare, score and sort photos on-device (nightly build)"
  homepage "https://github.com/alexpp90/photo-selector"

  conflicts_with cask: "photo-selector-toolbox"
  depends_on macos: :sonoma

  app "Lensjet.app"

  caveats <<~EOS
    Lensjet is not notarized by Apple yet, so macOS blocks the first launch
    ("Apple could not verify ...").
    Open System Settings > Privacy & Security, scroll to Security, click "Open Anyway"
    next to Lensjet and confirm. This is needed once.
    Or, in Terminal: xattr -dr com.apple.quarantine /Applications/Lensjet.app
  EOS

  zap trash: [
    "~/Library/Preferences/com.photoselectortoolbox.macos.plist",
    "~/Library/Preferences/app.alpatix.lensjet.plist",
  ]
end
