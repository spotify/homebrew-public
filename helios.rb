require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.780/helios-tools-0.8.780-shaded.jar"
  sha256 "39b08f6b645537454f97ec3e3b1691e5f1ef49204d88678e1c5b6d2f6afafc59"
  version "0.8.780"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.780-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.780-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
