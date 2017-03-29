require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.111/helios-tools-0.9.111-shaded.jar"
  sha256 "8f656c08a0331a4eb3bd83b8c61de8885829f98a44f1c7aba17a52663f127fd3"
  version "0.9.111"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.111-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.111-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
