require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.80/helios-tools-0.9.80-shaded.jar"
  sha256 "ce4f3e5e3832f49c5f1c49f7d4440677e6dd953cac48e5a987f6d33a75dac482"
  version "0.9.80"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.80-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.80-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
