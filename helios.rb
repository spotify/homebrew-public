require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.50/helios-tools-0.9.50-shaded.jar"
  sha256 "d515e89f042860a24c2a55e2c82ec7d452cac857aef3f3a966f47921bf42b6f8"
  version "0.9.50"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.50-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.50-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
