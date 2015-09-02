require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.493/helios-tools-0.8.493-shaded.jar"
  sha1 "cfa85bcd75793c6d34a6bd36c81a6f8dc34239fd"
  version "0.8.493"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.493-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.493-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
