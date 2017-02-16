require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.89/helios-tools-0.9.89-shaded.jar"
  sha256 "5d8233ba6723fdad8fa97b56764aa71554f5e458253c2cfe9651516599ab8a1e"
  version "0.9.89"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.89-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.89-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
