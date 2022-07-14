class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.27/ratatool-cli-0.3.27.tar.gz"
  sha256 "9b71dce353a67e596a3b76229ab61ca7c15d220b3cc7b8c883ae14caaf86bc49"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
