require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.494/helios-tools-0.8.494-shaded.jar"
  sha1 "10d1c8fa3c7337dee78ebe4208102472d6fd4138"
  version "0.8.494"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.494-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.494-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
