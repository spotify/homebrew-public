require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.62/helios-tools-0.9.62-shaded.jar"
  sha256 "655a0288824213a9dd0e147546898414f79b7c2b6149e3f38ce37b89123fd24c"
  version "0.9.62"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.62-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.62-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
