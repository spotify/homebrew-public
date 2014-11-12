require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.93/helios-tools-0.8.93-shaded.jar"
  sha1 "dc6a63d461e41dd1f03cb773cbb7252ab405fc7d"
  version "0.8.93"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.93-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.93-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
