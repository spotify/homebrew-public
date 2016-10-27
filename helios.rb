require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.46/helios-tools-0.9.46-shaded.jar"
  sha256 "24185d9d5a11b484c0756138958b648197e5cb1578dd78b927f72e48cb5e64cb"
  version "0.9.46"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.46-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.46-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
