class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.4.13/ratatool-cli-0.4.13.tar.gz"
  sha256 "b0aeb2bbed8b35c7b11a5cfa8b8d78a03a376bfdbb8e6ddacf6e4bf8736bc5fb"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
