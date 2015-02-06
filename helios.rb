require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.163/helios-tools-0.8.163-shaded.jar"
  sha1 "d2b1c932fe7c78681bce2b847863d4bcb1110e80"
  version "0.8.163"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.163-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.163-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
