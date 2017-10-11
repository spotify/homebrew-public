require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.160/helios-tools-0.9.160-shaded.jar"
  sha256 "83c1992c2fda8073f0299a40c8dd5551f636ed0633715414f26284e34303ddb3"
  version "0.9.160"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.160-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.160-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
