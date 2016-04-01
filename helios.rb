require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.768/helios-tools-0.8.768-shaded.jar"
  sha1 "40fe9a759fb400deab3bace907a97972d6fbb1ac"
  version "0.8.768"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.768-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.768-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
