require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.175/helios-tools-0.8.175-shaded.jar"
  sha1 "c7f259af5ae42ba89a8badcf0342bb78f089ed56"
  version "0.8.175"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.175-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.175-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
