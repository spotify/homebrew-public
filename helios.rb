require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.196/helios-tools-0.9.196-shaded.jar"
  sha256 "4a75692405968c892fa9dd1fdce6efe8c919ea8a60d9d983910d3bdc57360a6f"
  version "0.9.196"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.196-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.196-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
