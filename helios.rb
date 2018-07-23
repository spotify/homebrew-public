require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.210/helios-tools-0.9.210-shaded.jar"
  sha256 "0a1f88a6fb2d3ecf7184dd1dd947402372f84a9d7da1bfcc69e597430a958a98"
  version "0.9.210"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.210-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.210-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
