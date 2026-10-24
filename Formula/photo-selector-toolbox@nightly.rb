class PhotoSelectorToolboxATNightly < Formula
  desc "Analyze image EXIF metadata, find duplicates, and detect blur (Nightly)"
  homepage "https://github.com/alexpp90/photo-selector"
  version "latest"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexpp90/photo-selector/releases/download/nightly/photo-selector-toolbox-macos-apple-silicon.zip"
      sha256 "250ad87707faf0339f3d8bcd28ac5fe8b59004fe5fd5b5b4756b8bf688f9de69" # macos_sha256
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alexpp90/photo-selector/releases/download/nightly/photo-selector-toolbox-linux-x64.zip"
      sha256 "f81d55bbe3969554eed443029e463f675189d3d829e9c3f15225a1cfac913efb" # linux_sha256
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
