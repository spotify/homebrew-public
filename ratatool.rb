class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.18/ratatool-cli-0.3.18.tar.gz"
  sha256 "858b506117ae533ecff4e19bbb41fc62e64dfa5141840d9f4aeac4ea6c3e5205"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
