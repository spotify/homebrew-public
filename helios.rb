require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.832/helios-tools-0.8.832-shaded.jar"
  sha256 "97bf9c709f1be95b0ea1708aaacec415ec2c5cbf026023b9619e315e322f0dd3"
  version "0.8.832"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.832-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.832-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
