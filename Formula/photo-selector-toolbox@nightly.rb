class PhotoSelectorToolboxATNightly < Formula
  desc "Analyze image EXIF metadata, find duplicates, and detect blur (Nightly)"
  homepage "https://github.com/alexpp90/photo-selector"
  version "latest"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexpp90/photo-selector/releases/download/nightly/photo-selector-toolbox-macos-apple-silicon.zip"
      sha256 "b7e4a892945898d17ce1e8d0d188ff0f0a5a5872ded31f5b34f59a743967c5ff" # macos_sha256
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alexpp90/photo-selector/releases/download/nightly/photo-selector-toolbox-linux-x64.zip"
      sha256 "6b49bbe146f315d72bbe9fbb462f3c6efbd3443040748ae11f04b3120ed27b2f" # linux_sha256
    end
  end

  conflicts_with "photo-selector-toolbox", because: "both install the same binaries"

  def install
    if OS.mac?
      bin.install "photo-selector-toolbox/photo-selector-toolbox"
    elsif OS.linux?
      bin.install "photo-selector-toolbox"
      bin.install "Photo Selector Toolbox" => "photo-selector-toolbox-gui"
    end
  end

  test do
    system "#{bin}/photo-selector-toolbox", "--help"
  end
end
