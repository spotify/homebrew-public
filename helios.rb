require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.126/helios-tools-0.9.126-shaded.jar"
  sha256 "2944e6c8bc4a067c95a72dca37273b5cd89ad42c106db8ce76d8af83f10dd68c"
  version "0.9.126"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.126-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.126-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
