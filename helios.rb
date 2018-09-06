require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.214/helios-tools-0.9.214-shaded.jar"
  sha256 "ddc0646034d2948befbba60aacb744199b7544de0dba4ea2c64c7c9a503cebc5"
  version "0.9.214"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.214-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.214-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
