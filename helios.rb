require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.200/helios-tools-0.8.200-shaded.jar"
  sha1 "79ba9b0cd029842e4186b83100e66c3d86245caa"
  version "0.8.200"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.200-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.200-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
