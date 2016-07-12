require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.804/helios-tools-0.8.804-shaded.jar"
  sha256 "dbb478229860807ac2717169fa299a081bcc4ac0633bcf94d64cb1909b4486e5"
  version "0.8.804"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.804-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.804-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
