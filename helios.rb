require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.782/helios-tools-0.8.782-shaded.jar"
  sha256 "35da7a52add6d2ad2e6515416beff603f3b71a6c6cf9ffaa4de53772b24d8339"
  version "0.8.782"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.782-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.782-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
