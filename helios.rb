require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.179/helios-tools-0.9.179-shaded.jar"
  sha256 "2bfc00cb16c5c95466f31fa91213cc338eace6f5c7b65fc549ff19d9d004f516"
  version "0.9.179"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.179-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.179-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
