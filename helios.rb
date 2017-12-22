require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.190/helios-tools-0.9.190-shaded.jar"
  sha256 "7f3e9aac036afe96ef27e1e9526511e94d1bb462a835588821b472034a7fad6b"
  version "0.9.190"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.190-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.190-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
