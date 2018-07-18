require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.209/helios-tools-0.9.209-shaded.jar"
  sha256 "8a2d523790ec6ff59a387af8eb07023e19e7fe7909727ab472951ed8e21855b0"
  version "0.9.209"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.209-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.209-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
