require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.81/helios-tools-0.9.81-shaded.jar"
  sha256 "9e4570cbd4292de6aab7eacd19e659be0e1909d88fbb418f1252a93d113e28d4"
  version "0.9.81"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.81-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.81-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
