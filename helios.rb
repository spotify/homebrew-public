require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.781/helios-tools-0.8.781-shaded.jar"
  sha256 "471add00978f25716ff51f1f0b356b668309ce417e34fbec2d9d0b93169175e4"
  version "0.8.781"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.781-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.781-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
