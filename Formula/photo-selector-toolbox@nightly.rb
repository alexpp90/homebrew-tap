class PhotoSelectorToolboxATNightly < Formula
  desc "Analyze image EXIF metadata, find duplicates, and detect blur (Nightly)"
  homepage "https://github.com/alexpp90/photo-selector"
  version "latest"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexpp90/photo-selector/releases/download/nightly/photo-selector-toolbox-macos-apple-silicon.zip"
      sha256 "c6baf3c2d4b9f6c98a192d3f9c04bff57d20fc03b7dd37917cb62b3152c05af9" # macos_sha256
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alexpp90/photo-selector/releases/download/nightly/photo-selector-toolbox-linux-x64.zip"
      sha256 "a42ea447dd4cd767c488a9ce261ec278dbd28288c87ba8af5b3be50eb315abec" # linux_sha256
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
