require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.335/helios-tools-0.8.335-shaded.jar"
  sha1 "f859c99a72eea3205701d1bb2b410e610f196edb"
  version "0.8.335"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.335-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.335-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
