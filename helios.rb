require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.70/helios-tools-0.9.70-shaded.jar"
  sha256 "4cde84b3d20624a7b99b917e25670f7ce6eee00ef14fb5a08d1bafdba791e2f7"
  version "0.9.70"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.70-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.70-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
