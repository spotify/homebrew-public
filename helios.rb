require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.91/helios-tools-0.9.91-shaded.jar"
  sha256 "a6497a7bb86724959490dd8642d4af8a9215cf13a22cb655502f6882b94607fa"
  version "0.9.91"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.91-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.91-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
