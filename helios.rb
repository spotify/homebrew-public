require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.521/helios-tools-0.8.521-shaded.jar"
  sha1 "960fab25ed342b64067c9182c45c042d48644d6e"
  version "0.8.521"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.521-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.521-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
