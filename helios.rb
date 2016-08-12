require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.820/helios-tools-0.8.820-shaded.jar"
  sha256 "03b55c677d806515757fb2b326b5d9508aea233b97dd784c0a873df5ad01f150"
  version "0.8.820"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.820-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.820-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
