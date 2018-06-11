require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.205/helios-tools-0.9.205-shaded.jar"
  sha256 "77bd75fa7ed45766170744bacef82008d391a108753d7e391ff1796dabef6d74"
  version "0.9.205"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.205-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.205-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
