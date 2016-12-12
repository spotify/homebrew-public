require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.60/helios-tools-0.9.60-shaded.jar"
  sha256 "9e50dce4b458490ac6c49d9a3ae09b7c9e41829fd081d23358f0edf6ee1025fc"
  version "0.9.60"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.60-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.60-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
