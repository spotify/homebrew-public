require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.131/helios-tools-0.9.131-shaded.jar"
  sha256 "fb3eda2457a03263a7d5e49b97143205374841560baa42f3500956ce49fa038e"
  version "0.9.131"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.131-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.131-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
