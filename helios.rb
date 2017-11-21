require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.184/helios-tools-0.9.184-shaded.jar"
  sha256 "a599c09e2a5f0023e24ac48b2437312d946d8bcd5238b7f122c7a2e997b7395b"
  version "0.9.184"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.184-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.184-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
