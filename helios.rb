require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.68/helios-tools-0.9.68-shaded.jar"
  sha256 "e0a3cc32a5414dd3a9897c0c217a230808e8ee1c4801eba1732652d55d0a0fe3"
  version "0.9.68"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.68-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.68-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
