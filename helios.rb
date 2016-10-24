require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.25/helios-tools-0.9.25-shaded.jar"
  sha256 "163bf0669ef25cd0c355d8e57e57baf2042bf70c0d5b481abda38040ce073622"
  version "0.9.25"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.25-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.25-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
