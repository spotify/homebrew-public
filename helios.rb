require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.560/helios-tools-0.8.560-shaded.jar"
  sha1 "429841b8046c0ef03ea283e3f7f9ff12aa909430"
  version "0.8.560"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.560-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.560-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
