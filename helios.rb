require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.61/helios-tools-0.9.61-shaded.jar"
  sha256 "3cb27d04a9ea7d09597a769866bea7c1be9df1ac06fb6c5525a11cdc6dcf3089"
  version "0.9.61"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.61-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.61-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
