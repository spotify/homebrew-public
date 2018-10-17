require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.226/helios-tools-0.9.226-shaded.jar"
  sha256 "26bfe31537ad2d80f67cb8405a05d8cee6e86975dd7aec1b935a064f158987b0"
  version "0.9.226"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.226-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.226-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
