require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.831/helios-tools-0.8.831-shaded.jar"
  sha256 "40d46943d7a5c007c57e91c0963653d97ba6eb901d1609b94981b20be040c83a"
  version "0.8.831"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.831-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.831-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
