require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.463/helios-tools-0.8.463-shaded.jar"
  sha1 "cc47542b5e9f788fb2defd39bba5dad0392641de"
  version "0.8.463"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.463-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.463-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
