require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.213/helios-tools-0.9.213-shaded.jar"
  sha256 "824c2c30eb8285f8ef43ef4a370483053997a88a1bd036aa986683d67e6f9244"
  version "0.9.213"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.213-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.213-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
