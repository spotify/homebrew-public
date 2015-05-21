require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.338/helios-tools-0.8.338-shaded.jar"
  sha1 "42e34477ca265164ffe7633e63ca08a2c32a10b3"
  version "0.8.338"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.338-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.338-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
