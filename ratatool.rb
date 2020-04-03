class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.16/ratatool-cli-0.3.16.tar.gz"
  sha256 "631f777023ab68972ac1b0cbcd72c92b25ea386a142f74cea465cabb2ab39830"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
