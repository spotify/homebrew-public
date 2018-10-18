require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.229/helios-tools-0.9.229-shaded.jar"
  sha256 "a68dcabb75d97c5b8104561787f9cd0fc4a574a63b987b51b4eb2cfbeef03f31"
  version "0.9.229"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.229-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.229-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
