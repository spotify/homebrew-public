class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.21/ratatool-cli-0.3.21.tar.gz"
  sha256 "406898449c858418bd276b9792bcdb9b29d7382800784d52386bf8127ef671d3"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
