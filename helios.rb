require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.314/helios-tools-0.8.314-shaded.jar"
  sha1 "7ba2a8951e27060d301acb1903547ce6a708a24c"
  version "0.8.314"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.314-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.314-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
