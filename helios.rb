require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.128/helios-tools-0.9.128-shaded.jar"
  sha256 "dd2e7aa482769a6f81c889e3a29ba617e585f279a649ce00be8d09c52254076c"
  version "0.9.128"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.128-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.128-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
