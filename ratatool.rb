class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.4.3/ratatool-cli-0.4.3.tar.gz"
  sha256 "1970ed2b4787f6c759fc9c739f7183e3874157a5324edcd1e3db21b124fea328"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
