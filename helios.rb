require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.801/helios-tools-0.8.801-shaded.jar"
  sha256 "21397a07e916f849448c405b00b702fe24c03b53de0476a0732e96e2a08580f1"
  version "0.8.801"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.801-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.801-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
