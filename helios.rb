require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.213/helios-tools-0.8.213-shaded.jar"
  sha1 "c459ddc7bc31d7edebc4d7ada1a3ef4b321d2c15"
  version "0.8.213"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.213-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.213-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
