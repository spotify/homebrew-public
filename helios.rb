require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.118/helios-tools-0.9.118-shaded.jar"
  sha256 "da03a2906a1a95992464736bb9516243b823f2fcddce4f0675aeea74eaf0d67b"
  version "0.9.118"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.118-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.118-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
