class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.19/ratatool-cli-0.3.19.tar.gz"
  sha256 "bd495ed026b29a44a4ffa52925e5d55424502aaefd8d70ea4e9a8526783686fd"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
