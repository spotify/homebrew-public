require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.298/helios-tools-0.8.298-shaded.jar"
  sha1 "a172ea9b8fb0b175d288de10ce32705a5e60ac07"
  version "0.8.298"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.298-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.298-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
