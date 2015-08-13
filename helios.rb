require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.465/helios-tools-0.8.465-shaded.jar"
  sha1 "c643e3ef0d06520e0977cbd8b01f4353bae98a5a"
  version "0.8.465"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.465-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.465-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
