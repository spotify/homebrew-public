require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.221/helios-tools-0.9.221-shaded.jar"
  sha256 "d627b2878f3b3dab7e3fb547e63aee6c1cd63c73aaf2578519771a773da28630"
  version "0.9.221"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.221-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.221-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
