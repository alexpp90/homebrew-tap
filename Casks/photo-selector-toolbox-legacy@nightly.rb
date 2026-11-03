cask "photo-selector-toolbox-legacy@nightly" do
  version :latest
  sha256 "48b2f7d1c5140a504ff4d20d63d89978c1f62e46270101ec3fe7ba666b24e8a4" # macos_sha256

  url "https://github.com/alexpp90/photo-selector/releases/download/nightly/photo-selector-toolbox-macos-apple-silicon.zip"
  name "Photo Selector Toolbox (Legacy Nightly)"
  desc "Legacy Python/Tkinter photo selection and EXIF metadata suite (Nightly)"
  homepage "https://github.com/alexpp90/photo-selector"

  conflicts_with cask: "photo-selector-toolbox-legacy"
  depends_on :macos

  app "Photo Selector Toolbox.app"
  binary "photo-selector-toolbox/photo-selector-toolbox", target: "photo-selector-toolbox-legacy"

  zap trash: "~/Library/Preferences/com.alexpp90.photo-selector-toolbox.plist"
end
