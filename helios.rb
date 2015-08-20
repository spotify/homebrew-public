require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.476/helios-tools-0.8.476-shaded.jar"
  sha1 "76518f2357cf2573f905c9d14a3065a9003880df"
  version "0.8.476"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.476-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.476-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
