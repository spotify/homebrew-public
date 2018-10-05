require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.220/helios-tools-0.9.220-shaded.jar"
  sha256 "799069a3b2d8a1c34e908ef93ee1ea77b12bc9a74790261c9894a39799dc2690"
  version "0.9.220"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.220-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.220-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
