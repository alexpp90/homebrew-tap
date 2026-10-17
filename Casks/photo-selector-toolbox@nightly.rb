cask "photo-selector-toolbox@nightly" do
  version :latest
  sha256 "1fd9337e9dbf95b769dfadd753eda7f994786dfdf80bdbe1796b6d8ec82e810b" # macos_sha256

  url "https://github.com/alexpp90/photo-selector/releases/download/nightly/photo-selector-macos-apple-silicon.zip"
  name "PhotoSelector Studio (Nightly)"
  desc "High-performance native macOS photo culling and selection application (Nightly)"
  homepage "https://github.com/alexpp90/photo-selector"

  conflicts_with cask: "photo-selector-toolbox"
  depends_on macos: :sonoma

  app "PhotoSelector.app"

  zap trash: "~/Library/Preferences/com.photoselectortoolbox.macos.plist"
end
