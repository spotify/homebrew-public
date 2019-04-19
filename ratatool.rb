class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.11/ratatool-cli-0.3.11.tar.gz"
  sha256 "1067b6ee6794000932ef1f0dab756c1460e4b20cbf7ca785cca384a851664bc0"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
