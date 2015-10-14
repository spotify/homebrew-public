require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.547/helios-tools-0.8.547-shaded.jar"
  sha1 "207e87e1b04137db4a2d02e06f1f6afc781b2048"
  version "0.8.547"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.547-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.547-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
