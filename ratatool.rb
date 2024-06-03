class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.4.9/ratatool-cli-0.4.9.tar.gz"
  sha256 "0bf47798a398977915edf21fc65948a4c6b848de41c00af9986efd5669bba111"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
