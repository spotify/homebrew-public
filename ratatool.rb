class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.4.1/ratatool-cli-0.4.1.tar.gz"
  sha256 "50d66dbfc1e8a85fbad07aa6ef81c838c9b87a4e7d1d9030d9d5acc643f661c1"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
