require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.142/helios-tools-0.9.142-shaded.jar"
  sha256 "78da71f17fdeefa76ff1ab6a306d5040c421c4eee275f221a8e9032fa149aaba"
  version "0.9.142"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.142-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.142-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
