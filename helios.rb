require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.54/helios-tools-0.9.54-shaded.jar"
  sha256 "e0dc257bbd5a89be86f31648b0dfbbadc5ee46ecfe5fd00b90df55261ca4b694"
  version "0.9.54"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.54-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.54-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
