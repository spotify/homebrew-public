require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.468/helios-tools-0.8.468-shaded.jar"
  sha1 "7d78c007d646851785e7ad051c66cf9cd76a1c71"
  version "0.8.468"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.468-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.468-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
