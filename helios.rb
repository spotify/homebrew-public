require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.42/helios-tools-0.9.42-shaded.jar"
  sha256 "9d0689389a8966adf9e05826c6847c48ac8a6d62833c33284fa251bf1c6a0b56"
  version "0.9.42"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.42-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.42-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
