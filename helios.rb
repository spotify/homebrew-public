require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.104/helios-tools-0.9.104-shaded.jar"
  sha256 "539f16853d21bd82afe0de82bb34c09b5cfcd9033c692c159abaa63f7ffcaaae"
  version "0.9.104"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.104-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.104-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
