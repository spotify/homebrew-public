require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.223/helios-tools-0.9.223-shaded.jar"
  sha256 "96409d15322d683742398c2ee028354bd0b8682da3264e6048ccf32bfb9d9dae"
  version "0.9.223"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.223-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.223-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
