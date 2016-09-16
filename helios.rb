require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.850/helios-tools-0.8.850-shaded.jar"
  sha256 "cb362b1a1b7808cbad8ccdf94fdab9eaa60cef3061cde8a72f0d7250d8e64db8"
  version "0.8.850"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.850-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.850-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
