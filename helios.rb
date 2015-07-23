require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.444/helios-tools-0.8.444-shaded.jar"
  sha1 "b39e1ce5f1cb83cbaddc9a027c985331e522bfac"
  version "0.8.444"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.444-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.444-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
