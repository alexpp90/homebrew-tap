cask "photo-selector-toolbox@nightly" do
  version :latest
  sha256 "5013ad5effc0fae64f1084ae20115bd968c757830324d579fd1f331aa939a0b4" # macos_sha256

  url "https://github.com/alexpp90/photo-selector/releases/download/nightly/photo-selector-macos-apple-silicon.zip"
  name "PhotoSelector Studio (Nightly)"
  desc "High-performance native macOS photo culling and selection application (Nightly)"
  homepage "https://github.com/alexpp90/photo-selector"

  conflicts_with cask: "photo-selector-toolbox"
  depends_on macos: ">= :sonoma"

  app "PhotoSelector.app"

  zap trash: "~/Library/Preferences/com.photoselectortoolbox.macos.plist"
end
