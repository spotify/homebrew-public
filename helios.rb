require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.458/helios-tools-0.8.458-shaded.jar"
  sha1 "92cb6ea686b75d7016572cc87c8adad6818ad41e"
  version "0.8.458"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.458-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.458-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
