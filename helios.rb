require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.790/helios-tools-0.8.790-shaded.jar"
  sha256 "4729f5950836e31185da8e2d77d7f341c5aeeb2c76fa98737c11beaf4fa2e8ce"
  version "0.8.790"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.790-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.790-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
