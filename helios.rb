require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.83/helios-tools-0.9.83-shaded.jar"
  sha256 "e6109e42bc48bfdcda1abebf88baca74283ea24fc2c3601f35822d653b90226e"
  version "0.9.83"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.83-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.83-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
