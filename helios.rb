require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.656/helios-tools-0.8.656-shaded.jar"
  sha1 "be14c4cd245452b8c0c0f904b058448fc22f4ba9"
  version "0.8.656"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.656-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.656-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
