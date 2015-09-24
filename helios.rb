require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.505/helios-tools-0.8.505-shaded.jar"
  sha1 "00363e4e53fb377af51012d913fd02ea3b887977"
  version "0.8.505"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.505-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.505-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
