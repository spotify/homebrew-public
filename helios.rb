require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.268/helios-tools-0.8.268-shaded.jar"
  sha1 "b12dd63c254f3d4dc959b0e7c3c6fa6a90ead1aa"
  version "0.8.268"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.268-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.268-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
