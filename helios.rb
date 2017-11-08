require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.173/helios-tools-0.9.173-shaded.jar"
  sha256 "7cad990a707cae947c2a0320ebfab15e4a81f06eef4e67bf66a71c9e659c41ac"
  version "0.9.173"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.173-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.173-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
