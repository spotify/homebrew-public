require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.491/helios-tools-0.8.491-shaded.jar"
  sha1 "b257b7728897f53173e4bf3c1d53ac91f1e82494"
  version "0.8.491"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.491-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.491-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
