require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.188/helios-tools-0.9.188-shaded.jar"
  sha256 "516bf2baed83a3507e8d7ae848e9b7809cbb7415c2075a64b9df7b9f4e29d01f"
  version "0.9.188"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.188-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.188-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
