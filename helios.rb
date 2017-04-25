require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.124/helios-tools-0.9.124-shaded.jar"
  sha256 "8cefa53f223ce9eb0dfeef7da3f4b17e8ae5115702049f272b9e5e3b0a4e22d1"
  version "0.9.124"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.124-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.124-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
