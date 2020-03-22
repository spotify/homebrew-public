class Tfreader < Formula
  homepage "https://github.com/spotify/tfreader"
  url "https://github.com/spotify/tfreader/releases/download/v0.0.4/tfr-v0.0.4-macOS.tar.gz"
  sha256 "25ab8c5c9736e20ca6432d7ef46cadaf16374f919ff2477c7d9a77b5ff718f53"

  def install
    bin.install "tfr"
  end

  test do
    system "#{bin}/tfr --usage"
  end
end
