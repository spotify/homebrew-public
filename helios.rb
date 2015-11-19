require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.596/helios-tools-0.8.596-shaded.jar"
  sha1 "9933b991af99f13816ef1e2607e19470ee8785f7"
  version "0.8.596"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.596-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.596-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
