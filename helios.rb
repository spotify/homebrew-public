require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.779/helios-tools-0.8.779-shaded.jar"
  sha256 "cae783385e1dad91eab30ea8128e0ba02b07fab1cf2fe85aa01622195e5b9e7e"
  version "0.8.779"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.779-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.779-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
