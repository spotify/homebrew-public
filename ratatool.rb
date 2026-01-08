class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.4.12/ratatool-cli-0.4.12.tar.gz"
  sha256 "314e5e4c99f187889b08b7896b7b3cce20806f2488971aaddeb84fc3d205947a"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
