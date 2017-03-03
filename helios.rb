require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.98/helios-tools-0.9.98-shaded.jar"
  sha256 "c6968bd6727c110779242436dba45c6b2ff20d1eed0c1397ce88623d04936ce8"
  version "0.9.98"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.98-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.98-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
