require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.90/helios-tools-0.8.90-shaded.jar"
  sha1 "cb270ff82a3f637ca51159256e0cd3539835c3d4"
  version "0.8.90"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.90-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.90-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
