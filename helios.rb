require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.514/helios-tools-0.8.514-shaded.jar"
  sha1 "1efc629ec6d53449c7a193ff2eaffc51db4538aa"
  version "0.8.514"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.514-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.514-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
