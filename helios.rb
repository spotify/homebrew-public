require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.137/helios-tools-0.9.137-shaded.jar"
  sha256 "96e3667a3fd48e2fe7c42182084060b5ed9a325e800dab83ac93f14ac5a3d4f2"
  version "0.9.137"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.137-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.137-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
