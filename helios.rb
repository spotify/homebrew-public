require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.187/helios-tools-0.9.187-shaded.jar"
  sha256 "86fc3eb9695b034792d56c0769c10ceb30277428f4ce68c978dca5460e2574a3"
  version "0.9.187"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.187-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.187-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
