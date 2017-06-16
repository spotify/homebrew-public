require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.136/helios-tools-0.9.136-shaded.jar"
  sha256 "7d93f4a429dedd3d2ed7cf2cab9598de3fbae47fa9cfb0724376ddd4f8e023d2"
  version "0.9.136"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.136-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.136-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
