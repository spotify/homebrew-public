require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.177/helios-tools-0.9.177-shaded.jar"
  sha256 "da558d59a4b95171921e8823e499a6e727da290ebbe19d4c59acab32460521ac"
  version "0.9.177"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.177-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.177-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
