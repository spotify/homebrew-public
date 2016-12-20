require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.67/helios-tools-0.9.67-shaded.jar"
  sha256 "08cd684f166b27cd762f21c9b9d6db94af9a0154a88205a5e8a15c2fe7174db4"
  version "0.9.67"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.67-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.67-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
