require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.130/helios-tools-0.9.130-shaded.jar"
  sha256 "d134359e375d5c45ec69757b1de7bd4522882c0f87cf83176401a106d614d672"
  version "0.9.130"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.130-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.130-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
