require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.186/helios-tools-0.9.186-shaded.jar"
  sha256 "b8b8dae87dd97a768478764dae2158e3230c27dfbfb8a6e600461431f29b8913"
  version "0.9.186"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.186-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.186-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
