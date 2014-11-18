require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.108/helios-tools-0.8.108-shaded.jar"
  sha1 "291e2095035338ab8e1b192ff2478ca98a8c6b47"
  version "0.8.108"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.108-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.108-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
