require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.86/helios-tools-0.9.86-shaded.jar"
  sha256 "2e6e6708eacb113e03c334d1c7b1da69d51ab81b69c83c9cd0e6fc43694a8417"
  version "0.9.86"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.86-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.86-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
