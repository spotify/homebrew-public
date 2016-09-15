require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.846/helios-tools-0.8.846-shaded.jar"
  sha256 "5f7843c39e18402a159b56880f1c1248282d2cf7bf417a792542b2cae050cf6a"
  version "0.8.846"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.846-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.846-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
