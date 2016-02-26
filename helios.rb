require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.741/helios-tools-0.8.741-shaded.jar"
  sha1 "5d668709280ab6f14ad9462bd9d2d30fa970f6f3"
  version "0.8.741"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.741-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.741-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
