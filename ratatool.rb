class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.5/ratatool-cli-0.3.5.tar.gz"
  sha256 "404ecb682f7ea142b7aa6f8ad7a032d2816d12420063902c92b12f67c5cc1619"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
