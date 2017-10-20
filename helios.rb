require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.165/helios-tools-0.9.165-shaded.jar"
  sha256 "f1310cdca65e115fd042e9bc57c787c7bbceb6e07ad60379c0e2ac4d81006497"
  version "0.9.165"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.165-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.165-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
