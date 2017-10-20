require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.164/helios-tools-0.9.164-shaded.jar"
  sha256 "962dab9aac9aa52753bcba34f2950184073ea4433a83f3c0f44ad9b17e02b9aa"
  version "0.9.164"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.164-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.164-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
