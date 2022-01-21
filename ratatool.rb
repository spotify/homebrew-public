class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.25/ratatool-cli-0.3.25.tar.gz"
  sha256 "ce62b63750888738c98bd826111409834b31931d3193edb12a472234f97772d0"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
