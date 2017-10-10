require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.159/helios-tools-0.9.159-shaded.jar"
  sha256 "652fbbc735f31221752594b3e34d4e727c38488d96c9caeb2a4e6ecda67ec258"
  version "0.9.159"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.159-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.159-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
