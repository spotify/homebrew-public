require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.176/helios-tools-0.9.176-shaded.jar"
  sha256 "eed11bfaafdf8492508afa3ac7426f30fe33967942755f3b6c84de0b5b46bac3"
  version "0.9.176"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.176-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.176-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
