require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.719/helios-tools-0.8.719-shaded.jar"
  sha1 "6c59c854faad20ad5b1faaead72e0ec4d55548a5"
  version "0.8.719"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.719-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.719-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
