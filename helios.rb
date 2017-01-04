require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.72/helios-tools-0.9.72-shaded.jar"
  sha256 "3096b41a067cb4032e4ccc08ab02513fe81822c73d505061c004bd976c277ff9"
  version "0.9.72"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.72-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.72-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
