require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.273/helios-tools-0.8.273-shaded.jar"
  sha1 "3fac869be10bc33dbfb0c9f763f3cecb78b063de"
  version "0.8.273"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.273-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.273-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
