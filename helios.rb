require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.94/helios-tools-0.9.94-shaded.jar"
  sha256 "34c32f4fba32373b9a4932f15c341f7d792f4d6fad7a3d5bf5db954aab384b24"
  version "0.9.94"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.94-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.94-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
