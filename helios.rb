require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.191/helios-tools-0.9.191-shaded.jar"
  sha256 "27166374fedd673aa79d5c61ef8420d15ea7ebb4f20dba48080a21b256b75302"
  version "0.9.191"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.191-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.191-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
