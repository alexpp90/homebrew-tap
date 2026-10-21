cask "photo-selector-toolbox@nightly" do
  version :latest
  sha256 "2d7b5cbcbbf21f86a443e453968134e693ca27bc8d7d33fe205abaae2d9c2f1a" # macos_sha256

  url "https://github.com/alexpp90/photo-selector/releases/download/nightly/photo-selector-macos-apple-silicon.zip"
  name "PhotoSelector Studio (Nightly)"
  desc "High-performance native macOS photo culling and selection application (Nightly)"
  homepage "https://github.com/alexpp90/photo-selector"

  conflicts_with cask: "photo-selector-toolbox"
  depends_on macos: :sonoma

  app "Lensjet.app"

  zap trash: "~/Library/Preferences/com.photoselectortoolbox.macos.plist"
end
