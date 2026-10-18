cask "photo-selector-toolbox@nightly" do
  version :latest
  sha256 "958305901b62c3a4b69212bc4abd394b027a96763bc5655124d61eb1d1770101" # macos_sha256

  url "https://github.com/alexpp90/photo-selector/releases/download/nightly/photo-selector-macos-apple-silicon.zip"
  name "PhotoSelector Studio (Nightly)"
  desc "High-performance native macOS photo culling and selection application (Nightly)"
  homepage "https://github.com/alexpp90/photo-selector"

  conflicts_with cask: "photo-selector-toolbox"
  depends_on macos: :sonoma

  app "PhotoSelector.app"

  zap trash: "~/Library/Preferences/com.photoselectortoolbox.macos.plist"
end
