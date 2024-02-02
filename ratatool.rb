class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.4.4/ratatool-cli-0.4.4.tar.gz"
  sha256 "66363eddf8d83a5d7daa68744996770447ba77fede783eb7e3b9b12f2487e1f4"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
