require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.756/helios-tools-0.8.756-shaded.jar"
  sha1 "7a7a4323857919c8ae0763288d2161c5e65f3160"
  version "0.8.756"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.756-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.756-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
