require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.217/helios-tools-0.9.217-shaded.jar"
  sha256 "8b4416fe8f4d3e962bf95ba2e8cf7c3412909ede6c5756b02385b7c2e836abbd"
  version "0.9.217"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.217-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.217-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
