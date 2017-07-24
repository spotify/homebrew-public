require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.140/helios-tools-0.9.140-shaded.jar"
  sha256 "d16c2fc649f39d1db2c0e31f58f86f6b31c4ec9cfc8266c9d256f956ece877ae"
  version "0.9.140"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.140-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.140-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
