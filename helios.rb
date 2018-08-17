require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.212/helios-tools-0.9.212-shaded.jar"
  sha256 "480b8754a88e1b5b65805df3904daa5a3ca88ed5b282cd5a74aa96aef49eba75"
  version "0.9.212"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.212-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.212-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
