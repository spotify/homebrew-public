require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.125/helios-tools-0.8.125-shaded.jar"
  sha1 "c7b8af25a07cb1354203d05fd7a24f42e240b725"
  version "0.8.125"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.125-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.125-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
