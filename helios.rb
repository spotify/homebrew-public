require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.138/helios-tools-0.8.138-shaded.jar"
  sha1 "f26b2780c0076dd7a4af4a4ddfd907dd266122f1"
  version "0.8.138"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.138-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.138-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
