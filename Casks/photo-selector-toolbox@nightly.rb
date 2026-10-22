cask "photo-selector-toolbox@nightly" do
  version :latest
  sha256 "b546a0c49021daeddfa576889a1b7d4f09f580058ceb15bae8aeef395ad3b1a0" # macos_sha256

  url "https://github.com/alexpp90/photo-selector/releases/download/nightly-macos-desktop/photo-selector-macos-apple-silicon.zip"
  name "Lensjet (Nightly)"
  desc "Mac photo culling: compare, score and sort photos on-device (nightly build)"
  homepage "https://github.com/alexpp90/photo-selector"

  conflicts_with cask: "photo-selector-toolbox"
  depends_on macos: :sonoma

  app "Lensjet.app"

  zap trash: [
    "~/Library/Preferences/com.photoselectortoolbox.macos.plist",
    "~/Library/Preferences/app.alpatix.lensjet.plist",
  ]
end
