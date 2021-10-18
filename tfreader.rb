class Tfreader < Formula
  homepage "https://github.com/spotify/tfreader"
  url "https://github.com/spotify/tfreader/releases/download/v0.1.1/tfr-v0.1.1-macOS-Intel.tar.gz"
  sha256 "7474e5c4b9db2fc9d1af9ef459063f1a4a258ac50d2e55858c9d6e5152d1b84d"

  def install
    bin.install "tfr"
  end

  test do
    system "#{bin}/tfr --help"
  end
end
