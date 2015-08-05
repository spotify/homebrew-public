require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.461/helios-tools-0.8.461-shaded.jar"
  sha1 "3708132155a720a99dd914b3097203bb265687e7"
  version "0.8.461"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.461-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.461-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
