require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.146/helios-tools-0.9.146-shaded.jar"
  sha256 "12372e1b8300793d19d98b3ed852bf6aaa0ff70a18f4da4c5b16fda8fb9b4642"
  version "0.9.146"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.146-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.146-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
