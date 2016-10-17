require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.44/helios-tools-0.9.44-shaded.jar"
  sha256 "30ec1a7ef73db5dfcc8d884b6c06719be4e544915b1e895e6adef473de9638b2"
  version "0.9.44"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.44-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.44-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
