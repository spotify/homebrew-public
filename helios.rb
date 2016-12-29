require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.71/helios-tools-0.9.71-shaded.jar"
  sha256 "f908577611ba9c829c32452395862c3a655f12b6fc17ef577f5828e26d59be6d"
  version "0.9.71"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.71-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.71-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
