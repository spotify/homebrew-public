class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.10/ratatool-cli-0.3.10.tar.gz"
  sha256 "9f2b5936fef2dd88822d96339e11c2621f0d827eef9c42fbd9ba0b9c9ce324d8"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
