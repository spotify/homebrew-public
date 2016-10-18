require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.24/helios-tools-0.9.24-shaded.jar"
  sha256 "8297d000e7e950b6aee736cc148e1bb1f3c4c5ffb42edaaf872a5a51d37d02c0"
  version "0.9.24"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.24-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.24-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
