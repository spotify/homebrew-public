require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.700/helios-tools-0.8.700-shaded.jar"
  sha1 "3f55d24c7fe6f09e1834c45966a08e2c24647874"
  version "0.8.700"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.700-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.700-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
