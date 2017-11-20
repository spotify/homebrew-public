require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.182/helios-tools-0.9.182-shaded.jar"
  sha256 "18b93065f46875f2d22ae24f399bed66dd110e4b5ba991774f4faf109bae1d26"
  version "0.9.182"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.182-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.182-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
