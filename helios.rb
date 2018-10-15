require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.225/helios-tools-0.9.225-shaded.jar"
  sha256 "066493605f849c683092e54e5f03bfc5d324eff3b1e210ec9e418d25ea3a581c"
  version "0.9.225"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.225-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.225-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
