require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.796/helios-tools-0.8.796-shaded.jar"
  sha256 "106854a067101ac6686fa0a962e0e7efce73e92fdfdbaafd0a29e389ba40841b"
  version "0.8.796"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.796-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.796-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
