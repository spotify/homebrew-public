require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.73/helios-tools-0.9.73-shaded.jar"
  sha256 "54c3d19069dc0327f96c82556588db69d2a6b9e7ea1a9a3e02bd57ad510b7cd5"
  version "0.9.73"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.73-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.73-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
