require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.605/helios-tools-0.8.605-shaded.jar"
  sha1 "2f5eb5f0a36b6be07587dde72dc5fceded862244"
  version "0.8.605"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.605-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.605-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
