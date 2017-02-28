require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.95/helios-tools-0.9.95-shaded.jar"
  sha256 "3efc0700314117b2819e958cf78d8b6ebcaa165943789adedebf51cca2fa600a"
  version "0.9.95"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.95-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.95-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
