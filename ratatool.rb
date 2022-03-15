class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.26/ratatool-cli-0.3.26.tar.gz"
  sha256 "fdf5dfe596515b253557bc4566a13d3296362df2157fc1d49d3aeab716308817"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
