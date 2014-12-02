require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.127/helios-tools-0.8.127-shaded.jar"
  sha1 "9e99258443390f5e59eaf63bdc75b3e3ce3ab290"
  version "0.8.127"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.127-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.127-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
