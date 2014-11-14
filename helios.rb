require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.94/helios-tools-0.8.94-shaded.jar"
  sha1 "4e59814df9d3c3f947eb2e0de84ad0cc561ecd61"
  version "0.8.94"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.94-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.94-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
