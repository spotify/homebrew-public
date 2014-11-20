require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.121/helios-tools-0.8.121-shaded.jar"
  sha1 "507af5b00222d324001f301810d379f968a68ee7"
  version "0.8.121"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.121-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.121-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
