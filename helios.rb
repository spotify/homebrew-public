require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.105/helios-tools-0.9.105-shaded.jar"
  sha256 "2d7baa60f1c695b31a50c44e15bb2e4fe0f0e3fe8ca21dd01cf1a9d54063e363"
  version "0.9.105"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.105-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.105-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
