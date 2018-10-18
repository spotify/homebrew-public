class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.7/ratatool-cli-0.3.7.tar.gz"
  sha256 "0b014d24d8f7698a552951c73c72c08ddf02be2feb64e8f706e272e150a4b452"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
