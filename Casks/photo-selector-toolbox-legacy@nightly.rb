cask "photo-selector-toolbox-legacy@nightly" do
  version :latest
  sha256 "ba4d956bfa8a09f847b34f1d1d7aa8b1e9e01db784c67b483184ddb4ef9ac954" # macos_sha256

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
