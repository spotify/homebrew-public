require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.812/helios-tools-0.8.812-shaded.jar"
  sha256 "9020c77dec16e36ad2b0ee17dd82c4403c66d586cdfeb5f30a15cdd5ffe48d49"
  version "0.8.812"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.812-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.812-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
