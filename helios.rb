require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.696/helios-tools-0.8.696-shaded.jar"
  sha1 "1bdc50a5d47a34ecf1c1950e9bc9a8ccaebe70c1"
  version "0.8.696"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.696-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.696-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
