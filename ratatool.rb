class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.28/ratatool-cli-0.3.28.tar.gz"
  sha256 "8d128d177e841579b36bff443502b3ed10519042cc2cfefad077c8adb045c264"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
