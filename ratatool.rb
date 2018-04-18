class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.2/ratatool-cli-0.3.2.tar.gz"
  sha256 "e86ef7f08e82ebaa4a75c335ddf8d531c57f292e1c4fd605127c3dc38fb90618"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
