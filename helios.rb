require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.135/helios-tools-0.9.135-shaded.jar"
  sha256 "da764b552eaafdf56b7a5f5884b6f8b8681064b7067f2601878544de300240e0"
  version "0.9.135"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.135-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.135-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
