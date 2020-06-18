class Tfreader < Formula
  homepage "https://github.com/spotify/tfreader"
  url "https://github.com/spotify/tfreader/releases/download/v0.0.5/tfr-v0.0.5-macOS.tar.gz"
  sha256 "1c1703338ed7975a538279ce25133cb0cc001218068a8cee3f11b4270fd0e837"

  def install
    bin.install "tfr"
  end

  test do
    system "#{bin}/tfr --usage"
  end
end
