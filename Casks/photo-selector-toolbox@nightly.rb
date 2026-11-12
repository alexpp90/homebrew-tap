cask "photo-selector-toolbox@nightly" do
  version :latest
  sha256 "7e79ed79ceb58944899020f8d4055c1a1fea06c20f772feb23bf641635db04a0" # macos_sha256

  url "https://github.com/alexpp90/photo-selector/releases/download/nightly-macos-desktop/photo-selector-macos-apple-silicon.zip"
  name "Lensjet (Nightly)"
  desc "Mac photo culling: compare, score and sort photos on-device (nightly build)"
  homepage "https://github.com/alexpp90/photo-selector"

  conflicts_with cask: "photo-selector-toolbox"
  depends_on macos: :sonoma

  app "Lensjet.app"

  caveats <<~EOS
    Lensjet has its own cask now and this one no longer updates. Once:
    brew uninstall --cask photo-selector-toolbox@nightly && brew install --cask lensjet@nightly
  EOS

  zap trash: [
    "~/Library/Preferences/com.photoselectortoolbox.macos.plist",
    "~/Library/Preferences/app.alpatix.lensjet.plist",
  ]
end
