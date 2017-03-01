require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.96/helios-tools-0.9.96-shaded.jar"
  sha256 "f9905e860719a38be4f1614262200544e23dd04251ac00a770ed90b346a0b752"
  version "0.9.96"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.96-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.96-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
