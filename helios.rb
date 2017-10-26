require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.166/helios-tools-0.9.166-shaded.jar"
  sha256 "c7ab12b96caf36c9a4e979b464749086c79e5808a31da8c277c194f75b701084"
  version "0.9.166"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.166-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.166-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
