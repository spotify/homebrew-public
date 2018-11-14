require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.231/helios-tools-0.9.231-shaded.jar"
  sha256 "c65c2af3331c999fb2e5164ecc75d6ab9530eed841f5cdf86100d19040784627"
  version "0.9.231"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.231-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.231-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
