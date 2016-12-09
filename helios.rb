require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.58/helios-tools-0.9.58-shaded.jar"
  sha256 "13d3b43870d09582423ecbaff0d0281d8d794250cc90db5de34652d53b381235"
  version "0.9.58"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.58-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.58-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
