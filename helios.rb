require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.69/helios-tools-0.9.69-shaded.jar"
  sha256 "00efb8af84363d4224671aab9a00d8b49cc32445221139a5fc1ce1eedf988696"
  version "0.9.69"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.69-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.69-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
