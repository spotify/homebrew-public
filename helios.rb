require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.525/helios-tools-0.8.525-shaded.jar"
  sha1 "a726483b772b37a123ebaf6312d7cfa4fc7bde41"
  version "0.8.525"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.525-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.525-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
