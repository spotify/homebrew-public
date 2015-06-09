require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.350/helios-tools-0.8.350-shaded.jar"
  sha1 "92d9b5ed68e6797829e87e973f667cdd4f7db03b"
  version "0.8.350"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.350-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.350-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
