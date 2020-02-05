class Tfreader < Formula
  homepage "https://github.com/spotify/tfreader"
  url "https://github.com/spotify/tfreader/releases/download/v0.0.2/tfr-v0.0.2-macOS.tar.gz"
  sha256 "8a4c27ba7119b397a2fb6ccd02bff5f231789f821129477d8b1fbe789c50a401"

  def install
    bin.install "tfr"
  end

  test do
    system "#{bin}/tfr --usage"
  end
end
