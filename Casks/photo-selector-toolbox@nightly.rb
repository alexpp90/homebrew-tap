cask "photo-selector-toolbox@nightly" do
  version :latest
  sha256 "d3844c54d470458501826553a5a3627e1692d57213d99d4e984a0105a026ab45" # macos_sha256

  url "https://github.com/alexpp90/photo-selector/releases/download/nightly/photo-selector-macos-apple-silicon.zip"
  name "PhotoSelector Studio (Nightly)"
  desc "High-performance native macOS photo culling and selection application (Nightly)"
  homepage "https://github.com/alexpp90/photo-selector"

  conflicts_with cask: "photo-selector-toolbox"
  depends_on macos: :sonoma

  app "PhotoSelector.app"

  zap trash: "~/Library/Preferences/com.photoselectortoolbox.macos.plist"
end
