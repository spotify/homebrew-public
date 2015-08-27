require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.489/helios-tools-0.8.489-shaded.jar"
  sha1 "24a78e2ae81268316e3d354508a9e1d672e5f4bb"
  version "0.8.489"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.489-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.489-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
