class Tfreader < Formula
  homepage "https://github.com/spotify/tfreader"
  url "https://github.com/spotify/tfreader/releases/download/v0.0.3/tfr-v0.0.3-macOS.tar.gz"
  sha256 "238e8eaaaefe3ce065fc999758e96b3a7758a7523b5fef8ac2ae3c1b8d5279f3"

  def install
    bin.install "tfr"
  end

  test do
    system "#{bin}/tfr --usage"
  end
end
