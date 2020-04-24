class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.17/ratatool-cli-0.3.17.tar.gz"
  sha256 "b5dbfa47b0e038b67ef6812d21af3e0931eb4e27faec3de57e81920b52ae7fbd"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
