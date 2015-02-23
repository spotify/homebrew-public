require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.183/helios-tools-0.8.183-shaded.jar"
  sha1 "1c35a1e008a3d849d0b55dffa3df5d59a873f7d6"
  version "0.8.183"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.183-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.183-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
