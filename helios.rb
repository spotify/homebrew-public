require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.416/helios-tools-0.8.416-shaded.jar"
  sha1 "900ea68c0be40c9946ce7bfd7bc626d4fc8231b7"
  version "0.8.416"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.416-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.416-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
