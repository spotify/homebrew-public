class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.4.6/ratatool-cli-0.4.6.tar.gz"
  sha256 "42c7fcc922bdea7ae765e6fcb1611169ce543fa456b7da8fd27dfe3f0d3bdc1d"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
