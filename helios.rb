require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.79/helios-tools-0.9.79-shaded.jar"
  sha256 "d676a45f42956e981d96b1e8f9e3fa086d64fc7b120672f709e088582188e8b3"
  version "0.9.79"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.79-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.79-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
