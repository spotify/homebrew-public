require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.207/helios-tools-0.9.207-shaded.jar"
  sha256 "93f6ef8845493ee7bf1dd8be41604f64c82363c3c24be35f30b90d9212a5b3f6"
  version "0.9.207"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.207-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.207-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
