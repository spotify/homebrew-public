require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.156/helios-tools-0.9.156-shaded.jar"
  sha256 "93770a3e0b7e65e240020d4e1ed3fa78f22851d9a867cff21a7d6d61632fce7d"
  version "0.9.156"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.156-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.156-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
