require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.172/helios-tools-0.9.172-shaded.jar"
  sha256 "7d7cbcacdc526f651c5dc0086eff1a920264d5ea9d7f8e5e554eb7716f19b635"
  version "0.9.172"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.172-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.172-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
