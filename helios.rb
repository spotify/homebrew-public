require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.76/helios-tools-0.9.76-shaded.jar"
  sha256 "9f5956e35605c7df9e8bac9d23ed17d54fd72305844276160ffdf5d0eaf2a95f"
  version "0.9.76"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.76-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.76-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
