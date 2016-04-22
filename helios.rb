require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.771/helios-tools-0.8.771-shaded.jar"
  sha256 "d88478fa33a27cd36552cf14ba47ff5ce10ca64522b9b4ed08ae9b2309912892"
  version "0.8.771"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.771-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.771-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
