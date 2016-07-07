require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.803/helios-tools-0.8.803-shaded.jar"
  sha256 "d105c8e4c77b360c2ac6467c5bd9ae28a18c0fb26dd9bc6224fe099584c18b04"
  version "0.8.803"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.803-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.803-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
