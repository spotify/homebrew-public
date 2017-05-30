require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.133/helios-tools-0.9.133-shaded.jar"
  sha256 "d0562bab2420ec64e3340ae454bd204230fe78ce62c3f3d511427653dc9aee69"
  version "0.9.133"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.133-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.133-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
