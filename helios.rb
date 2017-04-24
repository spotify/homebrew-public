require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.123/helios-tools-0.9.123-shaded.jar"
  sha256 "aa2d8c43570947ffc3ad47b4291637b891e5762a076c3475a232d455929aad80"
  version "0.9.123"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.123-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.123-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
