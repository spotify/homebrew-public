class Tfreader < Formula
  homepage "https://github.com/spotify/tfreader"

  version "0.1.3"
  checksums = {
    "darwin-amd64" => "e85a40fe592ea9dfd0f304fe2142476354b06611a82e0eb66227b4ef86a0846c",
    "darwin-arm64" => "2bf3b790d36dd44c0f79962b83526ce2421d945b829e7f3c122b1b0cbb811792",
    "linux-amd64" => "074dd3ebd57879b0b68cf61851bf72c6cb825de7bd46d271755802abc9d16698",
  }

  on_macos do
    on_arm do
      url "https://github.com/spotify/tfreader/releases/download/v#{version}/tfr-macOS-ARM64-v0.1.3.zip"
      sha256 checksums["darwin-arm64"]
    end
    on_intel do
      url "https://github.com/spotify/tfreader/releases/download/v#{version}/tfr-macOS-X64-v0.1.3.zip"
      sha256 checksums["darwin-amd64"]
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/spotify/tfreader/releases/download/v#{version}/tfr-Linux-X64-v0.1.3.zip"
      sha256 checksums["linux-amd64"]
    end
  end

  def install
    bin.install "tfr"
  end

  test do
    system "#{bin}/tfr --help"
  end

end
