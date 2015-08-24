require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.480/helios-tools-0.8.480-shaded.jar"
  sha1 "19ce23197bb77192cbc413f6cbe1b1ddabda312c"
  version "0.8.480"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.480-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.480-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
