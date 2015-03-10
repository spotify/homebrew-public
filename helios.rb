require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.245/helios-tools-0.8.245-shaded.jar"
  sha1 "f7e9bd3ba76d728c34c23fa955cce11f1818421f"
  version "0.8.245"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.245-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.245-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
