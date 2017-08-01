require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.141/helios-tools-0.9.141-shaded.jar"
  sha256 "787cabf260e9618f4c38fa7659b13156f173c5fa926f080f15e94f645f9f6f9e"
  version "0.9.141"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.141-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.141-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
