require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.171/helios-tools-0.9.171-shaded.jar"
  sha256 "a49165cdbbf44eb0c158dbc7ee683f82673af65d822939354e5a6f66420b884b"
  version "0.9.171"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.171-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.171-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
