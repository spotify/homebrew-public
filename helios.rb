require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.162/helios-tools-0.9.162-shaded.jar"
  sha256 "9eee3756bd91ae2f892aa245986d84464a5f5903947d5a537347e8c2ed5755e8"
  version "0.9.162"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.162-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.162-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
