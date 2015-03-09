require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.237/helios-tools-0.8.237-shaded.jar"
  sha1 "a9d05e00e10452217b4eedbd633852024487c044"
  version "0.8.237"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.237-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.237-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
