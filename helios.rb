require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.88/helios-tools-0.9.88-shaded.jar"
  sha256 "7cd255775ee1f6470a9785924584efe4d201440c55d10e907dd064d46770d81c"
  version "0.9.88"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.88-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.88-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
