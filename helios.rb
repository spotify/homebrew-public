require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.128/helios-tools-0.9.128-shaded.jar"
  sha256 "2977c66b07745f431d979bfbc04f57267cb9760400f9771897655fea0e12111e"
  version "0.9.128"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.128-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.128-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
