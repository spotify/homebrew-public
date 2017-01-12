require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.77/helios-tools-0.9.77-shaded.jar"
  sha256 "07e70f0c432fd021132e9fdf3e9cccd20d44af5f1f87bbcf95d08c273ccc0a45"
  version "0.9.77"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.77-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.77-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
