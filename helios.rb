require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.174/helios-tools-0.9.174-shaded.jar"
  sha256 "c3fd7b6d9519f0af8bee368fa962c5073b8e2d72b2b93daf6a5185604e636614"
  version "0.9.174"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.174-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.174-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
