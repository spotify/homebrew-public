require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.218/helios-tools-0.9.218-shaded.jar"
  sha256 "003255d748f755b6db40990fd7feedcc6741e3abb8b36d535eae2e93687ba20c"
  version "0.9.218"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.218-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.218-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
