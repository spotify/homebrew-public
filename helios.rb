require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.380/helios-tools-0.8.380-shaded.jar"
  sha1 "87f64c53496a1e212417a1a6cfa795543a332a1f"
  version "0.8.380"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.380-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.380-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
