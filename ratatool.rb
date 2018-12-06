class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.8/ratatool-cli-0.3.8.tar.gz"
  sha256 "57b3b9d3d64c1d36777f747617b665b510f8e56a2e2a000545a0cd273ed31a8f"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
