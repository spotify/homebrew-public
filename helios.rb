require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.148/helios-tools-0.9.148-shaded.jar"
  sha256 "9c5fc68b21d96845ad4b70b0fa9e397cef40fb7113deafd364995f4013d96db8"
  version "0.9.148"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.148-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.148-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
