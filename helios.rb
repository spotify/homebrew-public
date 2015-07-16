require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.411/helios-tools-0.8.411-shaded.jar"
  sha1 "8390276e6b9e914b17ed0beaf34d2e8591f83d6d"
  version "0.8.411"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.411-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.411-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
