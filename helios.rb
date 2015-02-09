require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.168/helios-tools-0.8.168-shaded.jar"
  sha1 "bd3c048b9b9e25cf8e5b52f9bcd21f89866dd702"
  version "0.8.168"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.168-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.168-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
