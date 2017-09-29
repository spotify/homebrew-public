require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.155/helios-tools-0.9.155-shaded.jar"
  sha256 "c16db0ed26bb108acd9415a05baadca31b318eaffc189c8af9cdb107b99b4830"
  version "0.9.155"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.155-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.155-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
