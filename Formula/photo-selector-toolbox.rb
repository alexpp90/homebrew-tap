class PhotoSelectorToolbox < Formula
  desc "Analyze image EXIF metadata, find duplicates, and detect blur"
  homepage "https://github.com/alexpp90/photo-selector"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexpp90/photo-selector/releases/download/desktop-v#{version}/photo-selector-toolbox-macos-apple-silicon.zip"
      sha256 "129d35d0ca093388e47eddfb31c6cd221e0695f57800ab5af5fa4bbc0f286fbc" # macos_sha256
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alexpp90/photo-selector/releases/download/desktop-v#{version}/photo-selector-toolbox-linux-x64.zip"
      sha256 "01f11217f7da250daeb3bac262356b73a556df05fe43fc083b6cfe0a03405c20" # linux_sha256
    end
  end

  conflicts_with "photo-selector-toolbox@nightly", because: "both install the same binaries"

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
