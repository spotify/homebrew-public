class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.4.0/ratatool-cli-0.4.0.tar.gz"
  sha256 "d99a22232cd294aa2f101aef466676bfaa432ba8ead8940475856f623b7d8db9"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
