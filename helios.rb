require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.82/helios-tools-0.9.82-shaded.jar"
  sha256 "de4d13ce91d874500c3e2e51df6cdc46d95313ca0d9630defc9ff421607a9c67"
  version "0.9.82"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.82-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.82-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
