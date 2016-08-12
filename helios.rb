require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.821/helios-tools-0.8.821-shaded.jar"
  sha256 "6f134773af948e0fcc2553916a5e37d235c4283f2094f9b06d9dcacbc2449e61"
  version "0.8.821"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.821-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.821-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
