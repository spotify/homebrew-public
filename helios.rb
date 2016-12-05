require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.55/helios-tools-0.9.55-shaded.jar"
  sha256 "b382a4347d39a41e75dcae8e5f194a4fb8badc45fa5f2e1869ba5cef7d119074"
  version "0.9.55"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.55-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.55-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
