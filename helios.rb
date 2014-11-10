require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.86/helios-tools-0.8.86-shaded.jar"
  sha1 "3f4a96ad1342b9fbf56929127af4908c4832d3e5"
  version "0.8.86"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.86-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.86-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
