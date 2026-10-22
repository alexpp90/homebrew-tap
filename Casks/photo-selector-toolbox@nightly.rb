cask "photo-selector-toolbox@nightly" do
  version :latest
  sha256 "e7eb8e029753d00f3fe5028eb84cf27f1576e7bd98d7d406019c245bc13bb825" # macos_sha256

  url "https://github.com/alexpp90/photo-selector/releases/download/nightly/photo-selector-macos-apple-silicon.zip"
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
