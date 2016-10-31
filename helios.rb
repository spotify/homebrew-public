require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.47/helios-tools-0.9.47-shaded.jar"
  sha256 "2b789ecca0dbf62b1456130c39fa2d0bea008e0d694dabd1d89641dda9bd6efe"
  version "0.9.47"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.47-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.47-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
