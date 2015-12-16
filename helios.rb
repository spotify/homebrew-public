require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.635/helios-tools-0.8.635-shaded.jar"
  sha1 "0e3b5eabb96fa989cdcfddc1c164f93f62a9016c"
  version "0.8.635"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.635-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.635-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
