require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.106/helios-tools-0.9.106-shaded.jar"
  sha256 "702884b6b55dce2481dfcb8e101afb83c8be15e35a9ea32f206ab09e1f9a639c"
  version "0.9.106"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.106-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.106-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
