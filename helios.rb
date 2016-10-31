require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.48/helios-tools-0.9.48-shaded.jar"
  sha256 "1f85d9c205ef67e848d325ab5d8882ecbb2df64f5cfaea224230af0afca0264e"
  version "0.9.48"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.48-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.48-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
