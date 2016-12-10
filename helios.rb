require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.59/helios-tools-0.9.59-shaded.jar"
  sha256 "2638fd5c271de3948dc3f2d25f3f41f82350b761ac534dea6b53e0adfb47c2ba"
  version "0.9.59"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.59-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.59-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
