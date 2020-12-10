class Tfreader < Formula
  homepage "https://github.com/spotify/tfreader"
  url "https://github.com/spotify/tfreader/releases/download/v0.1.0/tfr-v0.1.0-macOS.tar.gz"
  sha256 "a33b0f9869d470fd3b50fec08fdd338df80a1cb9dd85fb252dd50a219fa9150f"

  def install
    bin.install "tfr"
  end

  test do
    system "#{bin}/tfr --help"
  end
end
