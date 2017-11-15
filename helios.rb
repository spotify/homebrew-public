require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.180/helios-tools-0.9.180-shaded.jar"
  sha256 "f4611872f39558e38fa655c419433dfee696bc7b6c18ff89d6917beecb2f38ed"
  version "0.9.180"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.180-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.180-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
