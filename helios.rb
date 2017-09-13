require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.154/helios-tools-0.9.154-shaded.jar"
  sha256 "5b2dfa659c6e46de8c0e1f837c4cd82545c6a1f95f329a9f5ea827ce1ea98d4c"
  version "0.9.154"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.154-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.154-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
