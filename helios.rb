require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.198/helios-tools-0.9.198-shaded.jar"
  sha256 "9422b0963f51ecead5f4ab73f72ff449115efb564018a04e48dba94bd37696e0"
  version "0.9.198"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.198-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.198-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
