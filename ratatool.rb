class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.4.2/ratatool-cli-0.4.2.tar.gz"
  sha256 "f9f5038d9dea6dc7215d0487b0b57acbb493e984812f294b0bd57c955799fe37"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
