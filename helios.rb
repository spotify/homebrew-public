require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.113/helios-tools-0.9.113-shaded.jar"
  sha256 "1b164eedb8e455ffaef86c0a06cce2eb0925bad3372d776afad46a44c7a611a9"
  version "0.9.113"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.113-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.113-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
