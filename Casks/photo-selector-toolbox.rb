cask "photo-selector-toolbox" do
  version "0.2.0"
  sha256 "d6143d1aaa3af7de901f8407e6f1b4035dc70bf3663181385fcb46456aa97557" # macos_sha256

  url "https://github.com/alexpp90/photo-selector/releases/download/macos-desktop-v#{version}/photo-selector-macos-apple-silicon.zip"
  name "Lensjet"
  desc "Mac photo culling: compare, score and sort photos on-device"
  homepage "https://github.com/alexpp90/photo-selector"

  conflicts_with cask: "photo-selector-toolbox@nightly"
  depends_on macos: :sonoma

  app "Lensjet.app"

  zap trash: [
    "~/Library/Preferences/com.photoselectortoolbox.macos.plist",
    "~/Library/Preferences/app.alpatix.lensjet.plist",
  ]
end
