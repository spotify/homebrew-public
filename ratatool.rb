class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.4.2/ratatool-cli-0.4.2.tar.gz"
  sha256 "cf970ba72318c727d8efe94ec0876760e1ce7f2440dbd2c2eec9703f533806c7"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
