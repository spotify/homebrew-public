class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.4/ratatool-cli-0.3.4.tar.gz"
  sha256 "f12324b8b05393401798a5a5caeb0340a96a422e473b2289e95eea6f9fd8054c"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
