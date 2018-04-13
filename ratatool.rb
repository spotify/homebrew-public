class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.1/ratatool-0.3.1.jar"
  sha256 "45d017c5eb019790a90dcc7cb3a3c2762219eaa5719ac93988ac7d4678500e47"

  bottle :unneeded

  def install
    libexec.install "ratatool-#{version}.jar"
    bin.write_jar_script libexec/"ratatool-#{version}.jar", "ratatool"
  end

  test do
    system "#{bin}/ratatool"
  end
end
