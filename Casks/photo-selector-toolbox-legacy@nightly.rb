cask "photo-selector-toolbox-legacy@nightly" do
  version :latest
  sha256 "e7ae2f050a5edd9602756bf3e7d338876ddef03a76377b665dbf03cf08ee93ea" # macos_sha256

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
