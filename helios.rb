require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.807/helios-tools-0.8.807-shaded.jar"
  sha256 "2156d611cfbb05d323237b7146aba60412f99ebeb0306393d6007c15430ecdcf"
  version "0.8.807"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.807-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.807-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
