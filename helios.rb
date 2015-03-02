require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.199/helios-tools-0.8.199-shaded.jar"
  sha1 "d95ff8da806b3d67bd940e94b9a8bb99493d5d72"
  version "0.8.199"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.199-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.199-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
