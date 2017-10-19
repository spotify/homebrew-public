require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.163/helios-tools-0.9.163-shaded.jar"
  sha256 "b16955472d27c758d7ea35aba82154c37f14dd2f37953a59898a24b75d206ef5"
  version "0.9.163"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.163-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.163-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
