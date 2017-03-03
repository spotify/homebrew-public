require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.100/helios-tools-0.9.100-shaded.jar"
  sha256 "c9b9669b0de34a32b338a99d191ca5ddaaea66ad09d23f9e82208168c056e0e1"
  version "0.9.100"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.100-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.100-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
