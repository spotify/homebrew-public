require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.222/helios-tools-0.9.222-shaded.jar"
  sha256 "c3ed46555eaa084cfdfeaa5efc66b394ff1461a1c8f3e1dcd06384d77c83b314"
  version "0.9.222"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.222-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.222-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
