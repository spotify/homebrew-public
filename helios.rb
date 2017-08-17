require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.147/helios-tools-0.9.147-shaded.jar"
  sha256 "92187b48dea4d1a8403f400054ee171e1cef6ae987f4bd1e7f7a238b61236870"
  version "0.9.147"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.147-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.147-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
