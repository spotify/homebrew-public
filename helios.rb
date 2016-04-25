require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.775/helios-tools-0.8.775-shaded.jar"
  sha256 "60dd7137bf115c4193b7de26c88b0f7593975682edf94c031af7a2e09aacc3c1"
  version "0.8.775"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.775-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.775-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
