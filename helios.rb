require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.800/helios-tools-0.8.800-shaded.jar"
  sha256 "a71fdd8fb214d1b362dd1e165754a99ecc1e12a7f7470a454e8bb25a13a24649"
  version "0.8.800"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.800-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.800-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
