class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.3/ratatool-cli-0.3.3.tar.gz"
  sha256 "e1f3dab35b793c0649b6e2e00c22eef8be215a93be34e22e591cce48b9dae00a"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
