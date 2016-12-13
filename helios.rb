require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.63/helios-tools-0.9.63-shaded.jar"
  sha256 "fcdacb20293d8ddc531c40c748a4b311b04000af012cb14cc34d385f2fc77070"
  version "0.9.63"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.63-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.63-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
