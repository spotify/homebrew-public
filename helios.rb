require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.143/helios-tools-0.9.143-shaded.jar"
  sha256 "87323130d08d13b04f7c35a73b591ec21f58d869499dc798a5dca13178e087cc"
  version "0.9.143"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.143-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.143-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
