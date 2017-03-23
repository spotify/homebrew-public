require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.107/helios-tools-0.9.107-shaded.jar"
  sha256 "5bc015b1281d02ebf17dbbc3fd6dc9913d00af1dab55744686be77d478b1f61b"
  version "0.9.107"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.107-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.107-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
