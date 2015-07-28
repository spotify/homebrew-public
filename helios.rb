require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.450/helios-tools-0.8.450-shaded.jar"
  sha1 "0bd90f5b42dc8553090383cca0ba7e725f31390a"
  version "0.8.450"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.450-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.450-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
