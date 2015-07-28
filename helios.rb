require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.447/helios-tools-0.8.447-shaded.jar"
  sha1 "26086c80fc5572a52aab3091e9a50249540bc16c"
  version "0.8.447"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.447-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.447-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
