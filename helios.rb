require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.522/helios-tools-0.8.522-shaded.jar"
  sha1 "988ba12ad2c66d792c8aad1f000fa47aa0b1167c"
  version "0.8.522"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.522-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.522-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
