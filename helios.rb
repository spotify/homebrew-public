require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.201/helios-tools-0.9.201-shaded.jar"
  sha256 "d7ac8d0470bdb6891e8b5a52e407816546c96f428719f5eb561ffed0be2e8969"
  version "0.9.201"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.201-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.201-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
