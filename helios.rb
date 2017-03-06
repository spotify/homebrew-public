require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.101/helios-tools-0.9.101-shaded.jar"
  sha256 "428083e955c7e1ff9ad60373abce329d9789d2a59edccb2ef965322564e912a1"
  version "0.9.101"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.101-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.101-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
