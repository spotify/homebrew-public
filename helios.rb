require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.206/helios-tools-0.9.206-shaded.jar"
  sha256 "565176bb5a3d0f3c2a3624940d82605001bb1421fb8ad9148fe92185ccee234b"
  version "0.9.206"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.206-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.206-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
