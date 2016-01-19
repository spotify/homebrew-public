require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.684/helios-tools-0.8.684-shaded.jar"
  sha1 "f7328f9b5986fb8bbe2452d36529ce44c1d905ed"
  version "0.8.684"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.684-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.684-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
