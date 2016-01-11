require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.662/helios-tools-0.8.662-shaded.jar"
  sha1 "1ba774203aec3fc13e0320fc279af141ce3db8d2"
  version "0.8.662"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.662-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.662-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
