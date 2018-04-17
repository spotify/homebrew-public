class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.2-SNAPSHOT/ratatool-0.3.2-SNAPSHOT.tar.gz"
  sha256 "7684a016e3619e1860cfbb08ae0a3932b5c42d2c8d698927fc9d6fe59be083fb"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
