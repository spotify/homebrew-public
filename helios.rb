require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.148/helios-tools-0.8.148-shaded.jar"
  sha1 "1395db1cedfafda3156b912b081f022353c6c410"
  version "0.8.148"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.148-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.148-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
