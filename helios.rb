require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.121/helios-tools-0.9.121-shaded.jar"
  sha256 "7325d7367de2b0b9f138335771f6b8ef623bb8fa9aa19f7f3d0cef52cf9fbdae"
  version "0.9.121"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.121-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.121-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
