class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.4.5/ratatool-cli-0.4.5.tar.gz"
  sha256 "1bad44524cf02e623c9d343177c51a44e3b51f1ae88dc2bd65d1853a64396a8c"

  def install
      lib.install Dir["lib/*.jar"]
      bin.install "bin/ratatool"
  end

  test do
    system "#{bin}/ratatool directSampler"
  end
end
