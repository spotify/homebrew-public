require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.189/helios-tools-0.9.189-shaded.jar"
  sha256 "c10158d6976e22727d11408be142c50fd4c53454190fe44a9643cbd4b0d8e576"
  version "0.9.189"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.189-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.189-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
