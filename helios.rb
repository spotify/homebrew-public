require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.185/helios-tools-0.9.185-shaded.jar"
  sha256 "eacd16331ff391114b0e48a2930a20be7d27a11fe7fa0557170369c000597c18"
  version "0.9.185"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.185-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.185-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
