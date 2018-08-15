require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.211/helios-tools-0.9.211-shaded.jar"
  sha256 "4d7a6da43b394d4ef1e44236a16cfd810527f61fcc4b8f9d3ba1cda7867a4ed4"
  version "0.9.211"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.211-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.211-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
