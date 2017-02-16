require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.90/helios-tools-0.9.90-shaded.jar"
  sha256 "d85679f47fb510b99820f54076d6a141f9b1d3dd9c3ba6d4af4a812e157fd4cd"
  version "0.9.90"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.90-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.90-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
