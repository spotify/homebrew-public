require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.208/helios-tools-0.9.208-shaded.jar"
  sha256 "0c5fd73e2f373cb6bcb51664832ea9e6130d2eb9e3693eea274c7b0c107a984e"
  version "0.9.208"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.208-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.208-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
