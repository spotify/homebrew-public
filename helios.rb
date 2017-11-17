require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.181/helios-tools-0.9.181-shaded.jar"
  sha256 "fb3410191a1f030573668fd792f7b547743eeb82c42516e7552538e696125d37"
  version "0.9.181"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.181-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.181-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
