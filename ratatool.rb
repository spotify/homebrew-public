class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.4.8/ratatool-cli-0.4.8.tar.gz"
  sha256 "24d569bd517f35d724ab5271cf868f659f294a1097ea62a6ad8ff884c65520ac"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
