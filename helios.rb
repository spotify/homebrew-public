require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.215/helios-tools-0.9.215-shaded.jar"
  sha256 "aa9134b8824363b6bf62c33e94765d03286d2800facdf23cdea65dcc07d24b07"
  version "0.9.215"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.215-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.215-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
