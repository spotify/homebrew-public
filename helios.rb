require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.181/helios-tools-0.8.181-shaded.jar"
  sha1 "fd9ea1935a1f778cb9608b73eb30965b894dd73e"
  version "0.8.181"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.181-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.181-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
