require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.193/helios-tools-0.9.193-shaded.jar"
  sha256 "e587dce43de700863564bcaa0f80a8feca2e4c2c939d35b5957826245e1a570b"
  version "0.9.193"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.193-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.193-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
