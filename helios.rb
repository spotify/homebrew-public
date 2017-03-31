require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.114/helios-tools-0.9.114-shaded.jar"
  sha256 "04c23d7ae68b9fc9d7eade5e91b659f6a77f4220b68d07269ac77c2d01f76b79"
  version "0.9.114"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.114-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.114-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
