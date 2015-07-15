require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.397/helios-tools-0.8.397-shaded.jar"
  sha1 "f6242d1d096bdae10436e853e003f0bb85904ea7"
  version "0.8.397"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.397-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.397-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
