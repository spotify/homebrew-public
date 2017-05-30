require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.134/helios-tools-0.9.134-shaded.jar"
  sha256 "9f6e3e5837bac91dabef9d22b48046a2c0517fecaf6f14a3f2d065bda5f0af58"
  version "0.9.134"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.134-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.134-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
