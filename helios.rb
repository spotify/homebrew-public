require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.236/helios-tools-0.8.236-shaded.jar"
  sha1 "62bac6241f9ff960c4e495ded4ccb7a437d87b07"
  version "0.8.236"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.236-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.236-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
