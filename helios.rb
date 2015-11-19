require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.598/helios-tools-0.8.598-shaded.jar"
  sha1 "b488559db2115d424ef05ff3c89afa13acb6651a"
  version "0.8.598"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.598-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.598-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
