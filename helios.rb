require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.158/helios-tools-0.9.158-shaded.jar"
  sha256 "170e46d8a264939f2092b4fb48c2549913f4d119cb3433bb24182b50e63e22f6"
  version "0.9.158"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.158-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.158-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
