require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.341/helios-tools-0.8.341-shaded.jar"
  sha1 "0a02738dcc51d3a0a64d9ba045a4df24ae65b79d"
  version "0.8.341"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.341-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.341-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
