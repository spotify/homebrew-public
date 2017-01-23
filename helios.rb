require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.84/helios-tools-0.9.84-shaded.jar"
  sha256 "d81037b017a9b76cd9029eb07c0857491e3bd9669d4ce21c5dbd9d5480d5b7fd"
  version "0.9.84"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.84-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.84-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
