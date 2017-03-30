require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.112/helios-tools-0.9.112-shaded.jar"
  sha256 "fa18b47029531186ed730f23f506b855767d99b2348e7da89fb8df22b89dab9c"
  version "0.9.112"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.112-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.112-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
