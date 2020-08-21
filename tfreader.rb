class Tfreader < Formula
  homepage "https://github.com/spotify/tfreader"
  url "https://github.com/spotify/tfreader/releases/download/v0.0.6/tfr-v0.0.6-macOS.tar.gz"
  sha256 "b496413216399fc25da9dc66bbb0c80c4675cfc5fd67f6f5d8c017d693147cd9"

  def install
    bin.install "tfr"
  end

  test do
    system "#{bin}/tfr --usage"
  end
end
