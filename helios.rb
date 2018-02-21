require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.200/helios-tools-0.9.200-shaded.jar"
  sha256 "16ed91b6cda4d915179f91748ec3f7219d9838717e8d82090f28e61e6a3cfa91"
  version "0.9.200"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.200-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.200-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
