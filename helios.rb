require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.357/helios-tools-0.8.357-shaded.jar"
  sha1 "d944d3866b7931c935c2bf52b53c7583b43ac667"
  version "0.8.357"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.357-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.357-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
