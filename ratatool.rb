class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.4.10/ratatool-cli-0.4.10.tar.gz"
  sha256 "1be755d778d9914fb33e0d59629678026b9b1ae595615fa03fa5b51b4fb47f9e"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
