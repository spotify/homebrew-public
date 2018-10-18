require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.230/helios-tools-0.9.230-shaded.jar"
  sha256 "fa5382b6e6e3967f1f56ee321ec25ea67d82d3d1445badb9f3d7d589b6daadcb"
  version "0.9.230"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.230-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.230-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
