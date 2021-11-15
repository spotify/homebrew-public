class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.24/ratatool-cli-0.3.24.tar.gz"
  sha256 "3954cf1e841a2ff046d19dc5aee3e581b9162998ae5bba9fbab6df86edf16e6c"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
