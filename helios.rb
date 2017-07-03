require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.138/helios-tools-0.9.138-shaded.jar"
  sha256 "e6aebc53af74ec556c87e65b3c425a2ab25a259faaf41f6c95416087a3529405"
  version "0.9.138"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.138-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.138-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
