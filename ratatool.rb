class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.4.7/ratatool-cli-0.4.7.tar.gz"
  sha256 "7a6653a03254eda9c0a0e127c35db98f6f6ec26309682ee8cb23ac71143b7993"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
