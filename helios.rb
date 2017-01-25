require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.85/helios-tools-0.9.85-shaded.jar"
  sha256 "dfb32778f520795ffa608e8974b294eff36c2e073999a2572eaea7378a14e717"
  version "0.9.85"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.85-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.85-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
