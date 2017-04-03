require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.115/helios-tools-0.9.115-shaded.jar"
  sha256 "1c28f0236819281499fde63592a22ad5ea47df9e079e474acb4ceb5a7232cee2"
  version "0.9.115"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.115-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.115-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
