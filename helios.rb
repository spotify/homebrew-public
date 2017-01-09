require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.74/helios-tools-0.9.74-shaded.jar"
  sha256 "56396af021aa31427e11bb25c755cf0dcf3332d3ebdab3151cd9a7fcc1c9a530"
  version "0.9.74"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.74-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.74-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
