class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.12/ratatool-cli-0.3.12.tar.gz"
  sha256 "8e35f360cd4d267a3c4962d796cd1b3dc5b3e0cdf27d8958a641bc963d5b9c5a"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
