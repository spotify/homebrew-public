require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.202/helios-tools-0.9.202-shaded.jar"
  sha256 "59d756d41df43b085aa21b415ca84c77910cf5ceea2efc488fa26841155a145a"
  version "0.9.202"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.202-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.202-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
