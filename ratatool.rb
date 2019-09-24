class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.13/ratatool-cli-0.3.13.tar.gz"
  sha256 "5440e8bcdb8d8e95188e0f84aba968fcce8712e1791df284e8cdebc8323ffd97"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
