require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.170/helios-tools-0.9.170-shaded.jar"
  sha256 "1856b8673fa3d86cc34fd9e72d22d2da86c82394c1d7128a0acf21acc164088c"
  version "0.9.170"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.170-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.170-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
