require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.161/helios-tools-0.9.161-shaded.jar"
  sha256 "f1ca6b9f1636e1222e02908598a0e0fccab63d9c9675be87b688897ac9b1f9a6"
  version "0.9.161"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.161-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.161-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
