require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.771/helios-tools-0.8.771-shaded.jar"
  sha1 "24d982cc5dd5fbecc80f9ff5470dc3b1f687e61e"
  version "0.8.771"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.771-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.771-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
