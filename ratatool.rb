class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.2.2/ratatool-0.2.2.jar"
  sha256 "2fdba13e61bbc0f02b056ee97ef0478b9934f12da2c622dd2efabd9dd86663d9"

  bottle :unneeded

  def install
    libexec.install "ratatool-#{version}.jar"
    bin.write_jar_script libexec/"ratatool-#{version}.jar", "ratatool"
  end

  test do
    system "#{bin}/ratatool"
  end
end
