require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.195/helios-tools-0.9.195-shaded.jar"
  sha256 "dd6e2645b4d38554fb857bdd4ff410cc2ee4f30c043b0f3adfaf39233d1a57c8"
  version "0.9.195"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.195-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.195-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
