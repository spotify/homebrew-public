require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.97/helios-tools-0.9.97-shaded.jar"
  sha256 "e6dd26f5a327e5d8ebab2a5e3e90f53be38fb22f417edebdeb1cbe044f587488"
  version "0.9.97"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.97-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.97-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
