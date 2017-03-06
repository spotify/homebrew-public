require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.102/helios-tools-0.9.102-shaded.jar"
  sha256 "9b80cece87bbb2287b5bf72e691894975b5baa73a93dec14e4f2250afd94d1e3"
  version "0.9.102"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.102-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.102-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
