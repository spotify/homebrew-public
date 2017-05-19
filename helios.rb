require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.130/helios-tools-0.9.130-shaded.jar"
  sha256 "6535250f9eb0795e450134e6f50c0ac895eba1424e77fbc863cf3f7d180b0c84"
  version "0.9.130"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.130-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.130-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
