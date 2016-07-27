require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.814/helios-tools-0.8.814-shaded.jar"
  sha256 "5a74feb44ac0f72f3f571766fc73bd2baaff1d23fe9593f529413757cc934c98"
  version "0.8.814"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.814-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.814-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
