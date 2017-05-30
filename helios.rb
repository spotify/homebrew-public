require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.132/helios-tools-0.9.132-shaded.jar"
  sha256 "c1de65855a2a0210eebd5bc9cf7d31e1f020cb7ea299f8d99f3fbb5792e393b9"
  version "0.9.132"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.132-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.132-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
