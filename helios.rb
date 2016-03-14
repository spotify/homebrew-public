require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.759/helios-tools-0.8.759-shaded.jar"
  sha1 "6f0d85bbe7a389e1b38c5cc312e1036974c2a9d1"
  version "0.8.759"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.759-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.759-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
