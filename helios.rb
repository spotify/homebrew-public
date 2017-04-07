require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.117/helios-tools-0.9.117-shaded.jar"
  sha256 "850b9771e352fa6998396aa62189caf8594b6322aeecf6f3c3e78e9dd3f071d4"
  version "0.9.117"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.117-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.117-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
