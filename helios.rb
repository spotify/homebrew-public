require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.777/helios-tools-0.8.777-shaded.jar"
  sha256 "631586a493f3ca81fb305a59dcf0b3bc4099b2b57b1f1d9777e6d6bcdd537eaa"
  version "0.8.777"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.777-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.777-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
