require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.197/helios-tools-0.9.197-shaded.jar"
  sha256 "3d636a27d17836abb380b49a629750bdadf1a323d28209b58e2cf450875ed9c1"
  version "0.9.197"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.197-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.197-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
