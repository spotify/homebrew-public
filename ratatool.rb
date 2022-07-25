class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.29/ratatool-cli-0.3.29.tar.gz"
  sha256 "239c167594de83b7803a4f48aefdc81355d1e461b7bf6a93994ad00bad21b210"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
