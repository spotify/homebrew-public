require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.464/helios-tools-0.8.464-shaded.jar"
  sha1 "7a6714871c7aebed481ce789b9e66485c9f94448"
  version "0.8.464"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.464-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.464-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
