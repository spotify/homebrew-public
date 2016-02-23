require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.735/helios-tools-0.8.735-shaded.jar"
  sha1 "239df0f1fc2a26e008ea269d4e7855d8a9d1e532"
  version "0.8.735"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.735-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.735-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
