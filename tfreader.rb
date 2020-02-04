class Tfreader < Formula
  homepage "https://github.com/spotify/tfreader"
  url "https://github.com/spotify/tfreader/releases/download/v0.0.1/tfr-v0.0.1-macOS.tar.gz"
  sha256 "a5d84d9ca8357aa766f4ba386c8ca180771cafc27ddcc5d90d25ad1c227fd1b5"

  def install
    bin.install "tfr"
  end

  test do
    system "#{bin}/tfr --usage"
  end
end
