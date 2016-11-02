require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.49/helios-tools-0.9.49-shaded.jar"
  sha256 "3ed706c3a25791aee58e33eaf1b0a37701ab074c9582e82d0d1a4e0f35231e1e"
  version "0.9.49"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.49-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.49-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
