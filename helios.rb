require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.216/helios-tools-0.9.216-shaded.jar"
  sha256 "0ad0d6eed8a78272ecc91cf3ca63d57bb64688904af568d588f13bee32a2117e"
  version "0.9.216"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.216-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.216-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
